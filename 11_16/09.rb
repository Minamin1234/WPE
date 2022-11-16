lines = Array.new
while line = gets
    line.chomp!
    lines.push(line)
end
if lines.size < 10
    lines.each do |l|
        puts l
    end
else 
    10.times do |i|
        puts lines[(lines.size - 10) + i]
    end
end