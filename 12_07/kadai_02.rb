
counts = {
    "A" => 0,
    "B" => 0,
    "AB" => 0,
    "O" => 0,
}

INFO_BLOODTYPE = 6
lines = Array.new
while line = gets
    line.chomp!
    words = line.split
    cnt = counts[words[INFO_BLOODTYPE]]
    if cnt
        counts[words[INFO_BLOODTYPE]] += 1
    end
end

ranks = Array.new(0)
counts.each do |key, val|
    i = [val, key]
    ranks.push i
end
ranks.sort!
ranks.reverse!

rnk = 1
ranks.each do |i|
    puts "#{rnk} #{i[1]} #{i[0]}人"
    rnk += 1
end
