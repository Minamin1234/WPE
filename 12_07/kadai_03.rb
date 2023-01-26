
counts = {}  # (電話番号3桁, 人数)

# 電話番号の属性は左から10個目
INFO_PHONENUMBER = 9

lines = Array.new
frag = true  # 最初の行であるか
while line = gets
    line.chomp!
    if frag
        frag = false  # 最初の行は無視する
        next
    end
    words = line.split  # 読み込んだ行を空白で分割して配列として格納する
    numbers = words[INFO_PHONENUMBER].split("-")  # 取得した電話番号を-で分割して配列として格納する
    cnt = counts[numbers[0]]  # 取得した電話番号3桁の人数を取得する
    if cnt  # その電話番号が連想配列に存在する時
        counts[numbers[0]] += 1
    else  # その電話番号が連想配列に存在しない時
        counts[numbers[0]] = 1
    end
end

# 連想配列の中身をすべて出力する
counts.each do |key, val|
    puts "#{key} #{val}"
end