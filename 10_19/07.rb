mx1 = gets.to_i
mx2 = mx1
9.times do 
    n = gets.to_i
    if n > mx1
        mx2 = mx1
        mx1 = n
    end
    if (n > mx2) and (mx2 != mx1)
        mx2 = n
    end
end
puts "second: #{mx2}"
puts "first: #{mx1}"