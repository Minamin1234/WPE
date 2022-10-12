puts "wday"
wday = gets.chomp
puts "hour"
hour = gets.to_i
if wday == "sun" and hour == 10 or hour == 18
    puts "食事の時間です"
end