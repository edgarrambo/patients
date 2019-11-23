class PatientsController < ApplicationController
	def index
		@patients = Patient.all
	end

	def new
		@patient = Patient.new
	end

	def create 
		Patient.create(patient_params)
		redirect_to root_path
end

private

def patient_params
	params.require(:patient).permit(:name, :age, :gender, :address, :phone_number, :email)
end
end