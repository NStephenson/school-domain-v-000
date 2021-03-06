# code here!
class School

  attr_reader :school, :roster

  def initialize(name)
    @school = name
    @roster = {}
  end



  def add_student(name, grade)
    if roster.keys.include?(grade)
      roster[grade] << name
    else
      roster[grade] = []
      roster[grade] << name
    end
  end

  def grade(grade)
    roster[grade]
  end

  def sort
    roster.each do |grades, students|
      students.sort!
    end
  end


end

