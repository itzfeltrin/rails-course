=begin
puts "What's your first name?"
name = gets.chomp
text = "Hello, #{name}, nice to meet you!"
puts text
text["Hello"] = "Bye"
puts text

# methods
puts text.nil?
puts text.empty?
=end

puts "What is your first name?"
first_name = gets.chomp
puts "What is your last name?"
last_name = gets.chomp
full_name = "#{first_name} #{last_name}"
puts "Your full name is #{full_name}"
puts "Your full name reversed is #{full_name.reverse}"
puts "Your name has #{full_name.gsub(/\s+/, "").length} characters in it"
