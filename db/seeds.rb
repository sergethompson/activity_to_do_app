# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


1.times do
	email = Faker::Internet.email

	User.create!(
  :email => email,
  :password => '12341234'
)
end


2.times do
	activity = %w(Run Bike Swimming Racquetball).sample
	description = "Will be a superfun time!"
	address = ["Manhattan, New York", "Queens, New York", "Brooklyn, New York", "Flatiron District", "Bronx, New York", "Staten Island, NY"].sample
	user = User.all.sample

	now = Time.now
	a_day_ahead = now + 60 * 60 * 24
	time = rand(now..a_day_ahead).to_f


	activity = Activity.create({activity: activity,
				description: description,
				address: address,
				time: time
				})
	user.do(activity)
end
