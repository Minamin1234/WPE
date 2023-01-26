# 試合結果表の生成に関するクラス
class ResultTable
  NONE = 0  # 試合が存在しない
  WIN = 1  # 勝利
  LOSE = 2  # 負け
  DRAW = 3  # 引き分け

  def initialize()
    @color_win = "#00EA99"  # 勝利したチームの背景色
    @color_lose = "#45B1FF"  # 敗退したチームの背景色
    @color_draw = "#EAE900"  # 引き分けしたチームの背景色
    @color_table = "#D5FFF1"  # 表自身の背景色
  end

  ## 指定した試合結果(x-x形式)から左側のチームが勝利しているかどうかを判定する
  def stategame(goals)
    if goals == "-" then
      return NONE
    end
    pts = goals.split("-")
    l = pts[0].to_i
    r = pts[1].to_i
    if l == r then
      return DRAW
    elsif l > r then
      return WIN
    end
    return LOSE
  end

  # その試合の左側のチームの得失点差を求める
  def get_totalgoals(goals)
    gls = goals.split("-")
    l = gls[0].to_i
    r = gls[1].to_i
    return l - r
  end

  # 入力した試合結果データから色分け/計算/整形を行った表をHTML形式で返す(行のリスト)
  def createtable(datas, tab=0)
    res = Array.new(0)
    border = 1
    res.push "<table border=\"#{border}\" style=\"border-collapse: collapse\" bgcolor=\"#{@color_table}\">\n"
    res.push "\t<tr>\n"
    res.push "\t\t<th></th>\n"
    datas[3].each do |el|
      res.push "\t\t<th>#{el}</th>\n"
    end
    res.push "\t</tr>\n"

    for i in 4..7 do
      res.push "\t<tr>\n"
      datas[i].each_with_index do |el, idx|
        color = ""
        if idx != 0 then  # 試合結果の応じてセルに色付けを行う
          state = stategame(el)
          if state == WIN then
            color = @color_win
          elsif state == DRAW then
            color = @color_draw
          elsif state == LOSE
            color = @color_lose
          else
            color = ""
          end
        end
        totalgoals = ""
        if el != "-" && idx != 0 then
          totalgoals = "(#{get_totalgoals(el)})"
        end
        res.push "\t\t<th bgcolor=\"#{color}\">#{el} #{totalgoals}</th>\n"
      end
      res.push "\t</tr>"
    end
    res.push "</table>"
    tb = ""
    tab.times do
      tb += "\t"
    end
    res.each_with_index do |el, i|
      res[i] = tb + res[i]
    end
    return res
  end
end

## それぞれの配列をaに結合する
def Joint(a, b)
  b.each do |el|
    a.push(el)
  end
end

input = ARGV[0].to_s  # 入力する試合結果テキストファイル
words = Array.new(0)  # 入力した試合結果テキストファイルの行配列
html = Array.new(0)  # 生成されたHTML形式の文字列配列

# ファイルから行単位で読み込み配列に格納する
text = File.readlines(input)
text.each_with_index do |l, i|
  words.push l.split
end

title = ""  # 試合のタイトル
group = words[2][1]  # グループ
htmlname = "Group#{group}.html"  # 生成するhtmlファイルの名称
output = File.join(File.dirname(ARGV[0]), htmlname)  # 出力先のパス

# 入力した試合結果テキストファイルからタイトルを抽出する
words[0].each do |el|
  title += el + " "
end

tabletitle = "Group #{words[2][1]} Result"  # 表の上のタイトル
rt = ResultTable.new()  # 表の生成用オブジェクト

# 行単位でHTMLを構成していく
html.push "<!DOCTYPE html>"
html.push "<html>"
html.push "\t<head>"
html.push "\t\t<meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\" />"
html.push "\t\t<title>#{title}</title>"
html.push "\t</head>"
html.push ""
html.push "\t<body>"
html.push "\t\t<h1>#{tabletitle}</h1>"
Joint(html, rt.createtable(words, 2))  # 表の生成と結合
html.push "\t<h2>凡例</h2>"
html.push "\t<p>勝利: 緑</p>"
html.push "\t<p>負け: 青</p>"
html.push "\t<p>引き分け: 背景色</p>"
html.push "\t<p>※( )の数字は得失点差</p>"
html.push "\t</body>"
html.push "</html>"

# 生成したHTMLテキストをHTMLファイルに一行ずつ書き出す
File.open(output, "w") do |f|
  html.each do |l|
    f.write(l+"\n")
  end
end

puts output  # 生成したHTMLファイルの保存先を表示する