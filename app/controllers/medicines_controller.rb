class MedicinesController < ApplicationController

before_action :require_signin
# Not sure yet how this will play out with user specific medicines.
before_action :require_admin, only: :destroy
    def index
        @medicines = Medicine.all.order("name")
    end

    def show
        @medicine = Medicine.find(params[:id])
        @types = @medicine.types

        if current_user
            @taken_medicine =  current_user.takes.find_by(medicine_id: @medicine.id)
        end
    end

    def edit
        @medicine = Medicine.find(params[:id])
    end

    def update
        @medicine = Medicine.find(params[:id])
        @medicine.user = current_user
        if @medicine.update(medicine_params)
            redirect_to @medicine, notice: 'Medicine updated.'
        else
            render :edit
        end
    end

    def new
        @medicine = Medicine.new
    end

    def create
        @medicine = Medicine.new(medicine_params)
        if @medicine.save
            redirect_to @medicine, notice: 'Medicine added.'
        else
            render :new
        end
    end

    def destroy
        @medicine = Medicine.find(params[:id])
        @medicine.destroy
        redirect_to medicines_url, notice: 'Medicine deleted.'
    end

private
#Check this permit if it seems insecure
    def medicine_params
        params.require(:medicine).permit!
    end
end
