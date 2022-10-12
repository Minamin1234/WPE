puts "点数"
pt = gets.to_i
if pt >= 80
    puts "優"
elsif pt >= 70 and pt < 80
    puts "良"
elsif pt >= 60 and pt < 70
    puts "可"
else 
    puts "不可"
end