namespace :db do 
	desc "Fill database with sample data"
	task populate: :environment do
		make_users
		make_microposts
		make_relationships
	end
end

def make_users
	# Create an initial fake admin user
	admin = User.create!(name: "Jungdo Lee",
				email: "lee.jungdo@gmail.com",
				password: "foobar",
				password_confirmation: "foobar",
				profile: "Hello World. This is my profile. Jungdo from Korea. #Coffee, #Ruby, #Rails",
				admin: true)
		
	# Now, make 99 fake users.
	99.times do |n|
		name = Faker::Name.name
		email = "example-#{n+1}@railstutorial.org"
		profile = "Hello world. I'm fake account #{n}! It's great to see you here, online."
		password = "password"
		User.create!(name: name,
					email: email,
					profile: profile,
					password: password,
					password_confirmation: password)
	end
end

		
def make_microposts
	users = User.all.limit(6)
	50.times do
	  content = Faker::Lorem.sentence(5)
	  users.each { |user| user.microposts.create!(content: content) }
	end
end

def make_relationships
	users = User.all
	user = users.first
	followed_users = users[2..50]
	followers = users [3..40]
	followed_users.each { |followed| user.follow!(followed) }
	followers.each { |follower| follower.follow!(user) }	
end