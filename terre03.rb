#/usr/bin/env/ruby

# Vérifie si un argument est passé en ligne de commande
if ARGV.empty?
    puts "Veuillez entrer une lettre en argument."
  elsif ARGV[0].nil?
    puts "L'argument ne doit pas être vide."
  else
    # Vérifie si l'argument passé est une lettre
    if ARGV[0].match?(/[[:alpha:]]/)
      # Récupère l'argument et le convertit en minuscule
      first_letter = ARGV[0].downcase
      # Calcul l'index de la première lettre dans l'alphabet et soustrait le code ASCII de la lettre
      index_letter = first_letter.ord - 'a'.ord
      # Tableau contenant toutes les lettres de l'alphabet à partir de la première lettre
      alphabet = ('a'..'z').to_a[index_letter..-1] 
      # Boucle sur chaque lettre de l'alphabet et les affichent
      for letter in alphabet do
        print letter
      end
    else
      puts "L'argument doit être une lettre"
    end
end