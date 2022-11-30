counts = {
    "to" => 0,
    "japan" => 0,
    "have" => 0,
    "a" => 0
}

lines = Array.new
while line = gets
    line.chomp!
    words = line.split
    words.each do |w|
        if w.downcase
            w.downcase!
        end
        cnt = counts[w]
        if cnt
            counts[w] += 1
        end
    end
end

counts.each do |key, val|
    puts "#{key}: #{val}回"
end