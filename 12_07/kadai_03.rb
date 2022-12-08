
counts = {}

INFO_PHONENUMBER = 9
lines = Array.new
frag = true
while line = gets
    line.chomp!
    if frag
        frag = false
        next
    end
    words = line.split
    numbers = words[INFO_PHONENUMBER].split("-")
    cnt = counts[numbers[0]]
    if cnt
        counts[numbers[0]] += 1
    else
        counts[numbers[0]] = 1
    end
end

counts.each do |key, val|
    puts "#{key} #{val}"
end