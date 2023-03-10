#/usr/bin/env/ruby

# Vérifie si un argument est passé en ligne de commande
if ARGV.empty?
      puts "Veuillez entrer un chiffre en argument."
else 
# Convertit l'argument passé en ligne de commande en un chiffre
number = ARGV[0].to_i
# Vérifie si l'argument passé en ligne de commande est un chiffre
      if number.to_s != ARGV[0]
            puts "Veuillez entrer un chiffre."
      else 
          if number.even?
              puts "pair"
          else
              puts "impair"
          end
      end
end