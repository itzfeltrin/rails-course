$users = [
  { :username => "itzfeltrin", :password => "abc123" }
]

def validate(username, password)
  user = $users.find { |item| item[:username] == username }
  if user == nil || user[:password] != password
    puts "Credentials were not correct"
  else
    puts user.to_s
  end
end

puts "Welcome to the authenticator"
25.times { print "-" }
puts
puts "This program will take input from the user and compare password"
puts "If password is correct, you will get back the user object"

attempts = 0
while attempts < 4
  print "Username: "
  username = gets.chomp
  print "Password: "
  password = gets.chomp
  validate(username, password)
  attempts += 1

  puts
  print "Press n to quit or any other key to continue: "
  keypressed = gets.chomp.downcase
  break if keypressed == "n"
end
puts "You have exceeded the number of 4 attempts" if attempts >= 4