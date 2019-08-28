class MedicationsController < ApplicationController
    def index
        @medications = Medicine.all
    end
end
