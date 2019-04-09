require("byebug")
class Bootcamp
  def initialize(name, slogan, student_capacity)
    @name = name
    @slogan = slogan
    @student_capacity = student_capacity
    @teachers = []
    @students = []
    @grades = Hash.new {|hash,i| hash[i] = []}
  end
  def name
    @name
  end   
  def slogan
    @slogan
  end
  def teachers
    @teachers
  end
  def students
    @students
  end
  def hire(teacher)
    @teachers << teacher
  end
  def enroll(student)
    if @students.length == @student_capacity
        return false
    else
        @students << student
        return true
    end
  end
  def enrolled?(student)
    return @students.any? {|val| val == student}
  end
  def student_to_teacher_ratio
    return @students.length/@teachers.length
  end
  def add_grade(student, grade)
    if enrolled?(student)
        @grades[student] << grade
        return true
    else
        return false
    end
  end
  def num_grades(student)
    @grades[student].length
  end

  def average_grade(student)
    if !enrolled?(student) || @grades[student].length == 0
        return nil
    else
        @grades[student].inject {|s,v| s+v} /@grades[student].length
    end
 end
end
