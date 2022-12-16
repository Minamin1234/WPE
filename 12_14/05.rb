def my_array_ave(array)
    sum = 0
    cnt = 0
    array.each do |elm|
        sum += elm
        cnt += 1
    end
    return sum / cnt
end

ary = [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
puts my_array_ave(ary)  # 5