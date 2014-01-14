class ActivityUser < ActiveRecord::Base
	belongs_to :activity
	belongs_to :user
  attr_accessible :activity_id, :user_id
end
