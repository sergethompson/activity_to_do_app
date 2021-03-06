class ActivitiesController < ApplicationController
before_filter :authenticate_user!, except: [:index, :show, :run]

	def new
		@activity = Activity.new
	end

	def create
				ip_address = request.ip

				activity = Activity.create({activity: params[:activity][:activity],
				description: params[:activity][:description],
				address: params[:activity][:address],
				time: params[:activity][:time]
				})

				###########To make table associations
				user = User.find(current_user.id)
				user.do(activity)
				# UserMailer.welcome_user(user).deliver()

				redirect_to activities_path
	end

	def index
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

	def show
		@activity = Activity.find(params[:id])

		@ip_address = request.ip == "127.0.0.1" ? nil : request.ip
		@s = Geocoder.search @ip_address || "76.204.125.144"

		if current_user
			@user = User.find(current_user.id)
		end

	end





	# def edit
	# 	@activity = Activity.find(params[:id])
	# end

	# def update 
	# 	activity = Activity.find(params[:id])
	# 	redirect_to activity_path(activity)
	# end

end