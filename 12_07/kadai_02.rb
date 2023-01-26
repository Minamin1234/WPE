# それぞれの血液型と人数
counts = {
    "A" => 0,
    "B" => 0,
    "AB" => 0,
    "O" => 0,
}

# 血液型の属性は左から7個目(インデックスは6)
INFO_BLOODTYPE = 6

# ファイルから行単位で読み込み
while line = gets
    line.chomp!
    words = line.split  # 読み込んだ行を空白で分割
    cnt = counts[words[INFO_BLOODTYPE]]  # 血液型の属性の人数を取得する
    if cnt  # 連想配列に血液型のキーが存在する場合
        counts[words[INFO_BLOODTYPE]] += 1
    end
end

ranks = Array.new(0)
# 連想配列からそれぞれの血液型, 人数を取り出し、[人数, 血液型]の形として配列に格納する
counts.each do |key, val|  
    i = [val, key]
    ranks.push i
end
ranks.sort!  # 人数でソート
ranks.reverse!  # 昇順から降順に(反転させる)

rnk = 1
ranks.each do |i|
    puts "#{rnk} #{i[1]} #{i[0]}人"
    rnk += 1
end
