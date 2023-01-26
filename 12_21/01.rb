class Student
    def initialize
        @id = ""
        @name = ""
        @score = 0
    end

    def id
        @id
    end

    def id=(id)
        @id = id
    end

    def name
        @name
    end

    def name=(name)
        @name = name
    end

    def score
        @score
    end

    def score=(score)
        @score = score
    end

    def print
        puts "id: #{@id}"
        puts "name: #{@name}"
        puts "score: #{@score}"
    end
end

stu = Student.new
stu.id = "HT21A099"
stu.name = "Tanaka Tarou"
stu.score = 90

stu.print