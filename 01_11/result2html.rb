input = ARGV[0].to_s
output = ""
text = File.readlines(input)
text.each_with_index do |l, i|
  words = l.split
  puts("#{i}: #{words}")
end