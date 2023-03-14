#/usr/bin/env/ruby

# Vérifie si trois arguments sont passés en ligne de commande
if ARGV.length != 3
    puts "Erreur."
else
# Vérifie si les arguments sont des chiffres
    if ARGV.all? { |arg| arg.match(/^[0-9]+$/) }
        a = ARGV[0].to_i
        b = ARGV[1].to_i
        c = ARGV[2].to_i
# Vérifie les valeurs sont égales
        if (a == b && b == c) || (a == b || a == c || b == c)
            puts "Erreur."
# Vérifie la valeur du milieu
        elsif (a > b && a < c) || (a < b && a > c)
            puts a
        elsif (b > a && b < c) || (b < a && b > c)
            puts b
        else
            puts c
        end
    else
        puts "Erreur."
    end
end