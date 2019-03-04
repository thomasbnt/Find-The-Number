Max_number = 20
Number_to_guess = Random.new.rand(Max_number)
Max_chance = Random.new.rand(2..6)
a = nil
puts "Enter a number between 0 and #{Max_number} included, you only have to #{Max_chance} chances."
for num in 1..Max_chance
  next if a == Number_to_guess
  a = gets.chomp.to_i
  if a > Number_to_guess
    puts "Number to big 🔽"
  elsif a < Number_to_guess
    puts "Number to small 🔼"
  end
end
puts "Well done, you've found it! 👏" if a == Number_to_guess
puts "Too bad! It was #{Number_to_guess}. " if a != Number_to_guess
