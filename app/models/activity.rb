class Activity < ActiveRecord::Base
  attr_accessible :activity, :description, :place, :time
end
