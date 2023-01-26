counts = {}
# 「性別」の属性は左から6番目
INFO_MANWOMAN = 5
lines = Array.new
while line = gets
    line.chomp!
    words = line.split  # 読み込んだ行を空白で分割して配列として格納
    cnt = counts[words[INFO_MANWOMAN]]  # 取得した性別の人数を得る
    if cnt  # 性別が連想配列に存在する場合
        counts[words[INFO_MANWOMAN]] += 1
    else  # 性別が連想配列に存在しない場合
        counts[words[INFO_MANWOMAN]] = 1
    end
end

puts "#{"男"} #{counts["男"]}人"
puts "#{"女"} #{counts["女"]}人"