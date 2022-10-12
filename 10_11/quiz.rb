puts "問題: 日本で一番高い山は？"
puts "1. 白根山"
puts "2. 富士山"

answer = gets.chomp

if answer == "1"
    puts "不正解"
elsif answer == "2"
    puts "正解"
else 
    puts "1-2を入力してください"
end