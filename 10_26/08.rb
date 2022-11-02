class Foo
    def hello
        puts "Hello"
    end
end

f1 = Foo.new
f2 = Foo.new
f3 = Foo.new

puts f1.object_id #70312696106580
puts f2.object_id #70312696106560
puts f3.object_id #70312696106540