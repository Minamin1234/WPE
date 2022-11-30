dice = {
    1 => 0,
    2 => 0,
    3 => 0,
    4 => 0,
    5 => 0,
    6 => 0,
}

results = Array.new(20)

20.times do |i|
    dice[rand(6) + 1] += 1
end

dice.each do |key, val|
    puts "#{key}: #{val}回"
end