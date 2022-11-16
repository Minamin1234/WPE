rnd = Array.new(100)
100.times do |i|
    rnd[i] = rand(100)
end

mx = rnd[0]
mn = rnd[0]
sum = 0
rnd.each do |i|
    if mx < i
        mx = i
    end
    if mn > i
        mn = i
    end
    sum += i
end
p rnd
puts "最小値: #{mn},平均値: #{sum/100},最大値: #{mx}、合計値: #{sum}"