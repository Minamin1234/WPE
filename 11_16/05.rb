rnd = Array.new(100)
100.times do |i|
    rnd[i] = rand(100)
end

p rnd
rnd = rnd.sort
p rnd.reverse