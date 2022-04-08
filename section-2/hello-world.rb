puts "What's your first name?"
name = gets
text = "Hello, #{name.rstrip}, nice to meet you!"
puts text
text["Hello"] = "Bye"
puts text

# methods
puts text.nil?
puts text.empty?