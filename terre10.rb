#/usr/bin/env/ruby

# Vérifie si un argument est passé en ligne de commande 
if ARGV.length != 1 
    puts "Erreur."
else
# Convertit la chaîne de caractères passée en argument en un entier
    nombre = ARGV[0].to_i
# Vérifie si "nombre" est inférieur ou égal à 0
    if nombre <= 1
        puts "Non, #{nombre} n'est pas un nombre premier."
    else
# On suppose que le nombre est premier
        est_premier =true
# Vérifie si le nombre est divisible par un nombre compris entre 2 et (nombre-1)
        for i in 2..nombre - 1
# Vérifie si le nombre a un autre diviseur que 1 et lui-même  
            if nombre % i == 0
                est_premier = false
                break
            end
        end
        if est_premier == true
            puts "Oui, #{nombre} est un nombre premier."
        else
            puts "Non, #{nombre} n'est pas un nombre premier."
        end
    end
end