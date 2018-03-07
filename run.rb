MaxChiffre = 20
ChiffreaDeviner = Random.new.rand(MaxChiffre)
MaxChance = Random.new.rand(2..6)
a = nil
puts "Entrez votre chiffre entre 0 et #{MaxChiffre} inclu, vous n'avez que #{MaxChance} chances."
for num in 1..MaxChance
  next if a == ChiffreaDeviner
  a = gets.chomp.to_i
  if a > ChiffreaDeviner
    puts "Chiffre trop grand"
  elsif a < ChiffreaDeviner
    puts "Chiffre trop petit"
  end
end
puts "Bravo, vous avez trouvé !" if a == ChiffreaDeviner
puts "Dommage !  C'était #{ChiffreaDeviner}. " if a != ChiffreaDeviner
