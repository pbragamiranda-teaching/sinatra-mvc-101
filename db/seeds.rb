require "faker"

10.times do 
	restaurant = Restaurant.new(name: Faker::Restaurant.name, city: Faker::Address.city)
	if restaurant.save!
		puts "#{restaurant.name} was sucesfully created!"
	end
end
puts "done."