# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


5.times do
	email = Faker::Internet.email

	User.create!(
  :email => email,
  :password => '12341234'
)
end


10.times do
	activity = %w(Run Bike Swimming Racquetball).sample
	description = "Will be a superfun time!"
	address = ["Manhattan, New York", "Queens, New York", "Brooklyn, New York", "Flatiron District", "Bronx, New York", "Staten Island, NY"].sample
	time = %w(6am 7am 8am 9am 4pm 5pm 6pm 7pm 8pm).sample
	user = User.all.sample

	activity = Activity.create({activity: activity,
				description: description,
				address: address,
				time: time
				})
	user.do(activity)
end
