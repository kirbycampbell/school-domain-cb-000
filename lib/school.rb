class School

  def initialize(name)
    @name = name
    @roster = {}
    puts name
  end

  def roster
    @roster
  end

  def add_student(name, grade)
      until @roster.include?(grade)
        @roster[grade] = []
      end
    @roster[grade] << name
  end

  def grade(grade)
    @roster[grade]
  end

  def sort
    @roster.each do |grade, name|
      @roster[grade] = name.sort
    end
  end

end

school = School.new("super Dicks School")
school.add_student("Kirby", 18)