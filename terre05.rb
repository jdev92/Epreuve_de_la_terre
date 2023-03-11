#/usr/bin/env/ruby

# Vérifie si deux arguments sont passés en ligne de commande
if ARGV.length != 2 
    puts "Erreur: entrez deux arguments"
else
# Convertit les arguments en nombre entier
    dividende = ARGV[0].to_i
    diviseur = ARGV[1].to_i
# Vérifie si le diviseur est égal à zéro
    if diviseur == 0 
        puts "Erreur: Le diviseur ne peut pas être 0."
# Vérifie si le dividende est inférieur au diviseur
    elsif dividende < diviseur
        puts "Erreur."
    else
# Calcule le quotient et le reste de la division
        quotient = dividende / diviseur
        reste = dividende % diviseur
        puts "Résultat: #{quotient}"
        puts "Reste: #{reste}"
    end
end