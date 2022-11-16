n = gets.to_i
if n % 3 == 0
    puts "3の倍数"
elsif n % 5 == 0
    puts "5の倍数"
else
    puts "それ以外"
end