sum = 0.0
min = 0.0
max = 0.0
l = gets
min = l.to_f
max = l.to_f

cnt = 0
while line = gets
    line.chomp!
    f = line.to_f
    sum += f
    if min > f
        min = f
    end
    if max < f
        max = f
    end
    cnt += 1
end

ave = sum / cnt

puts "合計:#{sum},平均:#{ave},最小:#{min},最大:#{max}"