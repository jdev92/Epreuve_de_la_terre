#/usr/bin/env/ruby

# Vérifie si un argument est passé en ligne de commande 
if ARGV.length != 1
    puts "Erreur."
else
# Convertit la chaîne de caractères passée en argument en un entier
    nombre = ARGV[0].to_i
# Vérifie si l'argument est négatif
    if nombre < 0
        puts "Erreur. Le nombre doit être positif."
    else
# Calcule la racine carrée
        racine_carree = nombre ** 0.5
        puts "#{racine_carree}"
    end
end