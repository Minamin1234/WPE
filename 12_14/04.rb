input = ARGV[0].to_s
output = ARGV[1].to_s
text = File.readlines(input)
File.open(output, "w") { |f|
    text.each_with_index do |l, i|
        f.write "#{i+1}: #{l}"
    end
}
# ruby 04.rb web-12-input.txt output.txt