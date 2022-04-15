class User
  attr_accessor :name, :email

  def initialize(name, email)
    @name = name
    @email = email
  end

  def run
    puts "Hey, I'm running"
  end

  # self. = static in most other languages
  def self.identify_class
    puts "Hey, I am a static method"
  end
end

user = User.new("Pedro Feltrin", "pedrofeltrin45@gmail.com")
user.run
User.identify_class
