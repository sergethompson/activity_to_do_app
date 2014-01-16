class Activity < ActiveRecord::Base
	has_many :users, through: :activity_users
  has_many :activity_users

  attr_accessible :activity, :description, :place, :time, :activity_id, :address, :latitude, :longitude, :ip_address



  geocoded_by :address
	after_validation :geocode,
  :if => lambda{ |obj| obj.address_changed? }

 #  geocoded_by :address
	# after_validation :geocode

end

# need to know how to update an individual activerecord table item from controller
