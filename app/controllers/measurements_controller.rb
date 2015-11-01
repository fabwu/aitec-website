class MeasurementsController < ApplicationController
	skip_before_filter :verify_authenticity_token

	def index
   	@measurements = Measurement.order('measurements.created_at DESC').all
	end
	
	def show
   	redirect_to measurements_url
  	end

	def new
	end
	
	def create
		@measurement = Measurement.new(measurement_params)
 
		@measurement.save
		redirect_to measurements_url
	end
	
	def destroy
  		@measurement = Measurement.find(params[:id])
  		@measurement.destroy
 
  		redirect_to measurements_path
	end
	
	private 
		def measurement_params
			params.require(:measurement).permit(:temperature, :humidity, :pressure)
		end
end
