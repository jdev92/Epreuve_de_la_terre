#/usr/bin/env/ruby

# Vérifie si un argument est passé en ligne de commande
if ARGV.length != 1
    puts "Erreur"
else
# Récupère l'heure, les minutes et la période
    if ARGV[0].match(/^(\d{1,2}):(\d{2})(AM|PM)$/)
        heure = $1.to_i
        minutes = $2.to_i
        periode = $3
# Si la période est AM
        if periode == "AM"
# Si l'heure est 12, on la convertit en 0
            heure = 0 if heure == 12
# Affiche l'heure au format 24h
            puts "#{heure}:#{minutes}"
# Si la période est PM
        else
# On ajoute 12 à l'heure sauf si lheure est égal à 12 
            heure += 12 unless heure == 12
# Si l'heure est 24, on la convertit en 12
            heure = 12 if heure == 24
# Affiche l'heure au format 24h
            puts "#{heure}:#{minutes}"
        end
    else
        puts "Erreur."
end
end