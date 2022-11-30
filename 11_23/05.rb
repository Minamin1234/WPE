month = {
    "January" => "1月",
    "February" => "2月",
    "March" => "3月",
    "April" => "4月",
    "May" => "5月",
    "June" => "6月",
    "July" => "7月",
    "August" => "8月",
    "September" => "9月",
    "October" => "10月",
    "November" => "11月",
    "December" => "12月"
}

elements = Array.new(0)

month.each do |a, b|
    elements.push "#{a}, #{b}"
end
elements = elements.sort
elements.each do |i|
    puts i
end