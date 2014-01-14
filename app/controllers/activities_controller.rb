class ActivitiesController < ApplicationController


	def new
		@activity = Activity.new
	end

	def create
		activity = Activity.create({activity: params[:activity][:activity],
			description: params[:activity][:description],
			place: params[:activity][:place],
			time: params[:activity][:time]
			})
		# Band.create(name: params[:band][:name])
		# redirect_to activities_path
		redirect_to activity_path(activity)

	end

	def index
		@activity = Activity.all
		# @user = User.find(current_user.id)
		# # binding.pry
		# @ip_address = request.ip
		# @user.ip_address = @ip_address
		# @address = current_user.address

	end

	def show
		@activity = Activity.find(params[:id])
		@email = current_user.email
		@user = User.find(current_user.id)
		binding.pry
		@ip_address = request.ip
		@user.ip_address = @ip_address
		@address = current_user.address
	end

	def edit
		@activity = Activity.find(params[:id])
	end

	def update 
		activity = Activity.find(params[:id])
		redirect_to activity_path(activity)

	end

end