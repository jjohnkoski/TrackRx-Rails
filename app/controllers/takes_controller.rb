class TakesController < ApplicationController

before_action :require_signin
before_action :set_medicine

def create
    @medicine.takes.create!(user: current_user)
    redirect_to @medicine, notice: 'Medicine added.'
end

def destroy
    taken_medicine = current_user.takes.find(params[:id])
    taken_medicine.destroy
    redirect_to current_user, notice: 'Medicine removed.'
end

private
# May need changed in the future if conflict in multiple meds
    def set_medicine
        @medicine = Medicine.find(params[:medicine_id])
    end
end
