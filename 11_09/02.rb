cnt = 1
while line = gets
    line.chomp!
    puts "#{cnt}: #{line}"
    cnt += 1
end