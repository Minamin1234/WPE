puts "点数"
pt = gets.to_i
res = case pt
when 80..100
    "優"
when 70..79
    "良"
when 60..69
    "可"
else
    "不可"
end
puts res