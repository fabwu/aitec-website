class MeasurementsController < ApplicationController
	skip_before_filter :verify_authenticity_token
	
	def create
		@measurement = Measurement.new(measurement_params)
 
		@measurement.save
		redirect_to url_for(:controller => :application, :action => :index)
	end
	
	def destroy
  		@measurement = Measurement.find(params[:id])
  		@measurement.destroy
 
  		redirect_to url_for(:controller => :application, :action => :index)
	end
	
	private 
		def measurement_params
			params.require(:measurement).permit(:temperature, :humidity, :pressure)
		end
end
