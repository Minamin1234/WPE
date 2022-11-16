rnd = Array.new(100)
100.times do |i|
    rnd[i] = rand(100)
end

p rnd
p rnd.sort