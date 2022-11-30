counts = {
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
        else 
            counts[w] = 1
        end
    end
end

words = Array.new(0)
counts.each do |key, val|
    words.push "#{key}: #{val}回"
end
words = words.sort
words.each do |i|
    puts i
end