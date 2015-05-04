cars = {"chevy"=>"tahoe","scion"=>"tc","bmw"=>"328","ford"=>"escape","mitsubishi"=>"eclipse"}

puts "what model car do you drive?"
answer = gets.chomp

cars.each do |make, model|
	if answer == model
		puts "Oh, you drive a #{model}? Thats a #{make}, right?"
reply = gets.chomp
end

end


