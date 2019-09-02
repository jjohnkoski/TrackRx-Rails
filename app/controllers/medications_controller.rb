class MedicationsController < ApplicationController
    def index
        @medications = Medicine.all
    end

    def show
        @medication = Medicine.find_by(name: params[:name])
    end
end
