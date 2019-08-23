class MedicationsController < ApplicationController
    def index
        @medications = ['Trazodone', 'Ibuprofen', 'Zyrtec']
    end
end
