class Student
  @first_name
  @last_name
  @email
  @username
  @password

  def to_s
    "First name: #{@first_name}"
  end

end

pedro = Student.new
pedro.first_name = "Pedro"
puts pedro