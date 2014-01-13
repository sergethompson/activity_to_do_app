require 'spec_helper'
require 'geocoder'

describe User do
  it "a use with ip address should be valid" do 
  	@ip_address = Geocoder::Lookup.request.ip
  	@ip_address.should == 0
  	# @user.create({email: 'bob@example.com', password: 'password', ip_address: 5555555}).should be_valid
  	# @user.create({email: 'bob@example.com', password: 'password', ip_address: 5555555}).should_not be_valid
  end
end
