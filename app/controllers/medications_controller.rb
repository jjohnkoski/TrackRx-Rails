class MedicationsController < ApplicationController
    def index
        @medications = Medicine.all
    end

    def show
        @medication = Medicine.find(params[:id])
    end
end
