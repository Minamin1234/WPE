def my_even?(a)
    return (a % 2 == 0)
end

a = ARGV[0].to_i

puts my_even?(a)