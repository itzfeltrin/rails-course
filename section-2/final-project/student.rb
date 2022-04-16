require_relative 'crud'

class Student
  include Crud
  attr_accessor :first_name, :last_name, :email, :username, :password

  def initialize(first_name, last_name, email, username, password)
    @first_name = first_name
    @last_name = last_name
    @email = email
    @username = username
    @password = password
  end

  def to_s
    "First name: #{@first_name}, Last name: #{@last_name}, Username: #{@username}, Email address: #{@email}"
  end

end

pedro = Student.new("Pedro", "Feltrin", "pedrofeltrin45@gmail.com", "itzfeltrin",
                    "abc123")
john = Student.new("John", "Doe", "john1@example.com", "john1",
                   "password2")

hashed_password = pedro.create_hash_digest(pedro.password)
puts hashed_password