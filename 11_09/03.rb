while line = gets
    line.chomp!
    puts line.gsub("abc","X")
end