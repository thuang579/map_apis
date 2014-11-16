class PagesController < ApplicationController
	#route to the homepage
	def home
		
	end

	#route to the results page
	def results
		#get the location from what the user enters in the form
		@location = params[:location]

		#set the location to Latitude/Longitude using Geocoder
		@lat,@long = Geocoder.coordinates(@location)

	end
end