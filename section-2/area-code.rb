dial_book = {
  "newyork" => "212",
  "newbrunswick" => "732",
  "edison" => "908",
  "plainsboro" => "609",
  "sanfrancisco" => "301",
  "miami" => "305",
  "paloalto" => "650",
  "evanston" => "847",
  "orlando" => "407",
  "lancaster" => "717"
}

def get_city_names(cities)
  cities.keys
end

def get_area_code(cities, city_name)
  cities[city_name]
end

loop do
  print "Do you want to lookup an area code based on a city name? (Y/N) "
  keypressed = gets.chomp.upcase
  if keypressed == "Y"
    puts "Which city do you want the area code for?"
    puts get_city_names(dial_book)
    puts "Enter your selection"
    city_name = gets.chomp.downcase
    if dial_book.include?(city_name)
      area_code = get_area_code(dial_book, city_name)
      puts "The area code for #{city_name} is #{area_code}"
    else
      puts "You entered an invalid city name"
    end
  else
    break
  end
end