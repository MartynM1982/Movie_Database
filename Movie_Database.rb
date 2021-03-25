# Database set up with some initial movies pre-installed.
movies = {
  StarWars: 4.8, 
  Divergent: 4.7,
  Seven: 4.9,
  Leon: 4.6,
  SpiderMan: 4.7,
  DjangoUnchained: 4.8
}

# We now give the user a series of onscreen options
puts "What would you like to do? add or update or display or delete "

choice = gets.chomp

# based on the choice the user makes we then have a series of if/else
case choice
when "add"
  puts "What movie would you like to add? "
  title = gets.chomp
  if movies[title.to_sym].nil? 
    puts "What rating does the movie have? "
    rating = gets.chomp
    movies[title.to_sym] = rating.to_i
  else
    puts "That movie already exists! Its rating is #{movies[title.to_sym]}."
  end
when "update"
  puts "What movie would you like to update? "
  title = gets.chomp
  if movies[title.to_sym].nil? 
    puts "That movie does not exist."
  else
    puts "What is the new rating? "
    rating = gets.chomp
    movies[title.to_sym] = rating.to_i
  end
when "display"
  movies.each do |title, rating| 
    puts "#{title}: #{rating}"
  end
when "delete"
  puts "What movie would you like to delete? "
  title = gets.chomp
  if movies[title.to_sym].nil? 
    puts "That movie does not exist."
  else
    movies.delete(title.to_sym)
  end
else
  puts "Error! Please choose from one of the options. "
end