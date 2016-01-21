puts 'Hey there! Whats your first name?'
name1= gets.chomp
puts 'Thanks! What about your middle name?'
name2= gets.chomp
puts 'We\'re on a roll! Finally, can I get your last name?'
name3= gets.chomp
puts 'I am pleased to meet you, ' + name1 + ' ' + name2 + ' ' + name3 + '! '
puts ' '
puts 'What is your favorite number?'
number = gets.chomp.to_i
result = number + 1
puts 'Why there, what a lovely number ' + number.to_s + ' is. But don\'t you think ' + result.to_s +  ' is better?'
# An alternative here would be to use string interpolation #{number} instead of converting all variables to strings
