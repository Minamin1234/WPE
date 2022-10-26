mx1 = gets.to_i
mx2 = gets.to_i
if mx1 < mx2
    tmp = mx1
    mx1 = mx2
    mx2 = tmp
end

8.times do
    n = gets.to_i
    if n > mx1 
        mx1 = n
    elsif n > mx2
        mx2 = n
    end
end

puts "second: #{mx2}"