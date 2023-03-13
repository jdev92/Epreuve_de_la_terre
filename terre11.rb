#/usr/bin/env/ruby

# Vérifie si un argument est passé en ligne de commande
if ARGV.length != 1
    puts "Erreur."
else
# Sépare l'argument par ":"
    time24 = ARGV[0].split(":")
# Convertit l'heure en un entier
    heure = time24[0].to_i
# Convertit les minutes en un entier
    minute = time24[1].to_i
# Si l'heure est inférieure à 12, on détermine la période comme AM.
periode = "AM"
# Si l'heure est égale à 0, remplace 0 par 12 et détermine la période comme AM.
    if heure == 0
        heure = 12
        periode = "AM"
 # Si l'heure est inférieure à 12, détermine la période comme AM.
    elsif heure < 12
        periode = "AM"
# Si l'heure est 12, on détermine la période comme PM.
    elsif heure == 12
        periode = "PM"
    else 
# Si l'heure est supérieur à 12, on convertit l'heure au format 12 heures et détermine la période comme PM
        heure -= 12
        periode = "PM"
    end
end
# Affiche l'heure convertie
puts "#{heure}:#{minute}#{periode}"