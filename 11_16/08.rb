rnd = Array.new(100)
100.times do |i|
    rnd[i] = rand(10) + 1
end
cnts = Array.new(10){0}

p rnd
rnd.each do |i|
    10.times do |n|
        if (n+1) == i
            cnts[n] += 1
        end
    end
end

10.times do |i|
    puts "#{i+1}: #{cnts[i]}個"
end