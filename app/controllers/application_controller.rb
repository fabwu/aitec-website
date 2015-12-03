class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  
  	def index
  		@selected_interval = Interval.find_by(is_current: true)
  		
  		if(@selected_interval == nil)
  			@selected_interval = Interval.new
  			@selected_interval.start = 2.hours.ago
  			@selected_interval.end = Time.now
  		end
  		
  		if(@selected_interval.end == nil)
  			@selected_interval.end = Time.now
  		end
  		
   	@measurements = Measurement.order('measurements.created_at DESC').all
   	@intervals = Interval.order('intervals.start DESC').all
	end
end
