class ActivityUser < ActiveRecord::Base
  attr_accessible :activity_id, :user_id
end