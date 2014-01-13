class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :password, :password_confirmation, :remember_me
  # attr_accessible :title, :body

  attr_accessible :ip_address, :latitude, :longitude, :address


  geocoded_by :ip_address,
  :latitude => :latitude, :longitude => :longitude
	after_validation :geocode

	reverse_geocoded_by :latitude, :longitude,
  :address => :address
	after_validation :reverse_geocode


end

