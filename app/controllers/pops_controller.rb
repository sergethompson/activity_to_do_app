class PopsController < ApplicationController

	def get_activities
						@activity = Activity.all
				@ip_address = request.ip == "127.0.0.1" ? nil : request.ip
				@s = Geocoder.search @ip_address || "76.204.125.144"

####################### Organizing activities to with activity and distance from current location to activity location###############
				activity_dist = []

				activity_dist = @activity.map do |t| 
					array = []
					dist = t.distance_to(@s[0].address) || 30000
					array = [t, dist]
				end
####################### Sorting activities to with activity and distance nearest to farthest###############
				@sorted = activity_dist.sort {|a,b| a[1] <=> b[1]}
		end

	def run
		get_activities
	end


	def bike
		get_activities
	end

	def swimming
			get_activities
	end

		def racquetball
			get_activities
	end

end
