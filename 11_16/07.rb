rnd = Array.new(100)
100.times do |i|
    rnd[i] = rand(100)
end

a = 0
b = 0
rnd.each do |i|
    if i % 3 == 0
        a += 1
    end

    if i % 5 == 0
        b += 1
    end
end
p rnd
puts "3の倍数: #{a}個,5の倍数: #{b}個"