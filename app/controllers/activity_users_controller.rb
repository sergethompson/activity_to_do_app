class ActivityUsersController < ApplicationController

before_filter :authenticate_user!, except: [:index, :show]

	def create

		user = User.find params[:user]
		activity = Activity.find params[:activity]

		user.do(activity)
		binding.pry

		redirect_to activity_path(activity)
	

	end

end