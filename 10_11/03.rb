puts "本数"
n = gets.to_i
if n >= 30
    puts (100*n) * 0.8
elsif n >= 10
    puts (100*n) * 0.9
else
    puts 100*n
end