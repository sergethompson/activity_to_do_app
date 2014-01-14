class Activity < ActiveRecord::Base
	has_many :users, through: :activity_users
  has_many :activity_users

  attr_accessible :activity, :description, :place, :time, :activity_id, :address, :latitude, :longitude, :ip_address

  geocoded_by :ip_address,
  :latitude => :latitude, :longitude => :longitude
	after_validation :geocode

	reverse_geocoded_by :latitude, :longitude,
  :address => :address
	after_validation :reverse_geocode

end
