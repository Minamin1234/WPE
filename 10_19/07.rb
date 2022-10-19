nums = []
mx1 = gets.to_i
nums.push(mx1)
9.times do 
    n = gets.to_i
    nums.push(n)
    if n > mx1
        mx1 = n
    end
end

mx2 = nums[0]
nums.each do |n|
    if (n > mx2) and (n != mx1)
        mx2 = n
    end
end
puts "second: #{mx2}"