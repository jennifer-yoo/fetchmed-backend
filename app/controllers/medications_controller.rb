class MedicationsController < ApplicationController

    def index
        @medications = Medication.all
    end

    def show
        @medication = Medication.find(params[:id])
    end

    def create
        @medication = Medication.create(medication_params)
        if @medication.valid?
            @medication.save
        else
            render json: { error: 'invalid medication, try again' }
        end
    end

    private

    def medication_params
        params.require(:medication).permit!
    end
end
