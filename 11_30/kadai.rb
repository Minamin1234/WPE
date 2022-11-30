numcnts = {
    1 => 0,
    2 => 0,
    3 => 0,
    4 => 0,
    5 => 0,
    6 => 0,
    7 => 0,
    8 => 0,
    9 => 0,
    10 => 0,
}

nums = Array.new(100)
100.times do |i|
    nums[i] = rand(10) + 1
end

nums.each do |i|
    numcnts[i] += 1
end

numcnts.each do |key, val|
    puts "#{key}: #{val}個"
end