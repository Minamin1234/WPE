def my_array_sum(array)
    sum = 0
    array.each do |elm|
        sum += elm
    end
    return sum
end

ary = [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
puts my_array_sum(ary)  # 55