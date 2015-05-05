#def deal(card_array)
#	poker_hand = []
#	card_array = card_array.shuffle
#	poker_hand = card_array.first(5)
#end


#deck = ["2","3","4","5","6","7","8","9","10","j","q","k"]

#my_hand = deal(deck)
#puts my_hand.inspect

def shoot(dice_array)
	roll = []
	dice_array = dice_array.shuffle
	roll = dice_array.first(1)

end

die1 = ["1","2","3","4","5","6"]
die2 = ["1","2","3","4","5","6"]

roll = shoot(die1) + shoot(die2)

puts roll






