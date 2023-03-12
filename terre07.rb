#/usr/bin/env/ruby

# Vérifie si aucun argument est passé en ligne de commande
if ARGV.empty?
    puts "Erreur."
elsif
# Vérifie si un argument est passé en ligne de commande
    ARGV.length != 1
    puts "Erreur."
else
# Affiche la longueur de l'argument
    for arg in ARGV do 
        puts arg.length
    end
end