class MedicinesController < ApplicationController
    def index
        @medicines = Medicine.all
    end

    def show
        @medicine = Medicine.find(params[:id])
    end

    def edit
        @medicine = Medicine.find(params[:id])
    end

    def update
        @medicine = Medicine.find(params[:id])
        @medicine.update(medicine_params)
        redirect_to @medicine
    end

    def new
        @medicine = Medicine.new
    end

    def create
        @medicine = Medicine.new(medicine_params)
        @medicine.save
        redirect_to @medicine
    end

private

    def medicine_params
        params.require(:medicine).permit!
    end
end
