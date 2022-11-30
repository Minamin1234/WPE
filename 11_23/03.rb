dictionary = {
    "dog" => "犬",
    "cat" => "猫",
    "rabbit" => "うさぎ",
    "horse" => "馬",
    "lion" => "ライオン",
}

puts "動物の名前を英語で入力してください"
english = gets.chomp
if english.downcase
    english.downcase!
end
japanese = dictionary[english]
if japanese
    puts "#{english}は日本語で#{japanese}といいます"
else
    puts "辞書に#{english}はありません"
end