class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :password, :password_confirmation, :remember_me, :current_sign_in_ip
  # attr_accessible :title, :body

  attr_accessible :ip_address, :latitude, :longitude, :address

  # ip_address = current_sign_in_ip 


  geocoded_by :current_sign_in_ip,
  :latitude => :latitude, :longitude => :longitude
	after_validation :geocode

	reverse_geocoded_by :latitude, :longitude,
  :address => :address
	after_validation :reverse_geocode


end

