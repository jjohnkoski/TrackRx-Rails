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
        medicine_params = params.require(:medicine).permit!
        @medicine.update(medicine_params)
        redirect_to @medicine
    end
end
