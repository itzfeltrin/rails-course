require 'bcrypt'

hashed_password = BCrypt::Password.create("my password")
hashed_password1 = BCrypt::Password.create("my password")
hashed_password2 = BCrypt::Password.create("my password")

puts hashed_password
puts hashed_password1
puts hashed_password2

# parsed_password = BCrypt::Password.new("$2a$12$DyXSHGDh2lFU8EaT1oW/zeMDIIasaKRn8b1oEsGMNsN5ff8uc6pWy")
#
# puts parsed_password == "my password"
