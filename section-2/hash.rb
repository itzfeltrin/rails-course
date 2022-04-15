dict = {
  :job => "Software developer",
  "football_team" => "Internacional"
}
dict.store(:name, "Pedro Feltrin")
dict.store(:age, 20)
puts "Hey! My name is #{dict[:name]} and I am #{dict[:age]} years old. I currently work as a #{dict[:job]}.\nAs to football, I am a huge fan of #{dict["football_team"]}."

# get hash keys
puts dict.keys.to_s

# get hash values
puts dict.values.to_s

# loop through keys
dict.each { |key, value| puts "#{key}: #{value}" }