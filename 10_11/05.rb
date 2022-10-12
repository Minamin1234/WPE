min = gets.to_i
max = gets.to_i
if max < min
    tmp = max
    max = min
    min = tmp
end
puts "max: #{max}"
puts "min: #{min}"