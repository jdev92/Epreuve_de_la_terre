#/usr/bin/env/ruby

# Vérifie si deux arguments sont passés en ligne de commande 
if ARGV.length != 2
    puts "Erreur."
else
# Convertit les arguments en nombre entier 
    base = ARGV[0].to_i
    exposant = ARGV[1].to_i
# Vérifie si l'exposant est négatif
    if exposant < 0 
        puts "Erreur."
    else
# calcule la puissance
        resultat = base ** exposant
        puts "#{resultat}"
    end
end