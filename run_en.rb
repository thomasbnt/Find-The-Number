MaxChiffre = 20
NumberToGuess = Random.new.rand(MaxChiffre)
MaxChance = Random.new.rand(2..6)
a = nil
puts "Enter your number between 0 and #{MaxChiffre} included, you only have #{MaxChance} chances."
for num in 1..MaxChance
  next if a == NumberToGuess
  a = gets.chomp.to_i
  if a > NumberToGuess
    puts "Number too big"
  elsif a < NumberToGuess
    puts "Number too small"
  end
end
puts "Congratulations, you've found it !" if a == NumberToGuess
puts "Pity ! It was #{NumberToGuess}. " if a != NumberToGuess
