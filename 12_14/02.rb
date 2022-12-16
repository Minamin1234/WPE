def my_big(a, b)
    if a > b
        return a
    end
    return b
end

a = ARGV[0].to_f
b = ARGV[1].to_f

puts my_big(a, b)