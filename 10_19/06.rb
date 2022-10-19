cnt = 0
line = ""
for i in 10..99 do
    if cnt >= 10
        puts line
        line = ""
        cnt = 0
    end
    line += i.to_s + " "
    cnt += 1
end
puts line