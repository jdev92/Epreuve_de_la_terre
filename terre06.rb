#/usr/bin/env/ruby

# Vérifie si un argument est passé en ligne de commande
if ARGV.empty? 
    puts "Erreur: Veuillez rentrer une chaîne de caractère en argument."
else
# Affiche l'inverse de la chaîne de caractère passée en ligne de commande
    puts ARGV.join.reverse
end