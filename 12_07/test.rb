
counts = {}
INFO_MANWOMAN = 5
lines = Array.new
while line = gets
    line.chomp!
    words = line.split
    cnt = counts[words[INFO_MANWOMAN]]
    if cnt
        counts[words[INFO_MANWOMAN]] += 1
    else
        counts[words[INFO_MANWOMAN]] = 1
    end
end

#puts "#{"男"} #{counts["男"]}人"
#puts "#{"女"} #{counts["女"]}人"