user_wins = nil
# 1. Store game options
hands = ['rock',  'paper', 'scissors']
#           0         1         2

# 2. Generate opponents choice
comps_choice = hands.sample
puts comps_choice

# 3. Let user choose game option
puts "Pick a hand.(type a number from the menu and then press enter!!!)"
hands.each_with_index do  |hand, index|
    puts "#{index + 1} -- #{hand}"
end

users_choice_num = gets.chomp.to_i - 1
puts "You chose #{hands[users_choice_num]}"
puts "Your opponent chose #{comps_choice}"

# 4. Set hands values
if comps_choice == hands[users_choice_num]

else
    if comps_choice == 'rock'
        user_wins = hands[users_choice_num] == 'paper'
    elsif comps_choice == 'paper'
        user_wins = hands[users_choice_num] == 'scissors'
    elsif comps_choice == 'scissors'
        user_wins = hands[users_choice_num] == 'rock'
    end
end

# 5. Display winner
if comps_choice == hands[users_choice_num]
    puts "Nothing!!!"
elsif user_wins
    puts "Congrats you won!!!"
else
    puts "Sorry you lost!!!"
end