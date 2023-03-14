#/usr/bin/env/ruby

#Vérifie si un argument est passé en ligne de commande
if ARGV.empty? 
    puts "Erreur."
else 
# Vérifie si les arguments sont des entiers
    if ARGV.all? { |arg| arg.match(/^[0-9]+$/) }
# Vérifie si la liste est triée
    nombres = ARGV.map { |arg| arg.to_i }
        if nombres == nombres.sort
        puts "Triée."
        else
        puts "Pas triée."
        end
else
    puts "Erreur."
    end
end