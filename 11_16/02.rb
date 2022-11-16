n = gets.to_i
N = Array.new
n.times do |i|
    N.push i+1
end
fact = N.inject(1) do |prev,i|
    prev * i
end
puts fact