class MedicinesController < ApplicationController
    def index
        @medicines = Medicine.all.order("name")
    end

    def show
        @medicine = Medicine.find(params[:id])
    end

    def edit
        @medicine = Medicine.find(params[:id])
    end

    def update
        @medicine = Medicine.find(params[:id])
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

    def medicine_params
        params.require(:medicine).permit!
    end
end
