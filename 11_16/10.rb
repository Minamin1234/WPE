lines = Array.new
while line = gets
    line.chomp!
    lines.push(line)
end
lines = lines.reverse
lines.each do |l|
    puts l
end