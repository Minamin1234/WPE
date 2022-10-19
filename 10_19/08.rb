a = gets.to_i
b = gets.to_i
cnt = 0
for i in a..b do
    if (i % 400) == 0
        cnt += 1
    elsif ((i % 100) != 0) and ((i % 4) == 0)
        cnt += 1
    end
end
puts "#{cnt}"