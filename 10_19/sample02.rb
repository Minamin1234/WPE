puts "7 x 8 = ?"
ans = gets.chomp
while "56" != ans
    puts "不正解です"
    ans = gets.chomp
end
puts "正解です"