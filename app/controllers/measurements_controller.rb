class MeasurementsController < ApplicationController
	skip_before_filter :verify_authenticity_token

	def index
   	@measurements = Measurement.all
	end
	
	def show
   	@measurement = Measurement.find(params[:id])
  	end

	def new
	end
	
	def create
		@measurement = Measurement.new(measurement_params)
 
		@measurement.save
		redirect_to @measurement
	end
	
	private 
		def measurement_params
			params.require(:measurement).permit(:temperature, :humidity, :pressure)
		end
end
