puts 'Cleaning database...'
Movie.destroy_all

puts 'Creating Movies...'
movie1 = { title: 'Wonder Woman 1984', overview: 'Wonder Woman comes into conflict with the Soviet Union during the Cold War in the 1980s', post_url: "https://image.tmdb.org/t/p/original/8UlWHLMpgZm9bx6QYh0NFoq67TZ.jpg", rating: 6.9}
movie2 =  { title: 'The Shawshank Redemption', overview: 'Framed in the 1940s for double murder, upstanding banker Andy Dufresne begins a new life at the Shawshank prison', post_url: "https://image.tmdb.org/t/p/original/q6y0Go1tsGEsmtFryDOJo3dEmqu.jpg", rating: 8.7}
movie3 =  { title: "Titanic", overview: "101-year-old Rose DeWitt Bukater tells the story of her life aboard the Titanic.", post_url: "https://image.tmdb.org/t/p/original/9xjZS2rlVxm8SFx8kPC3aIGCOYQ.jpg", rating: 7.9}
movie4 =  { title: "Ocean's Eight", overview: "Debbie Ocean, a criminal mastermind, gathers a crew of female thieves to pull off the heist of the century.", post_url: "https://image.tmdb.org/t/p/original/MvYpKlpFukTivnlBhizGbkAe3v.jpg", rating: 7.0}
[movie1, movie2, movie3, movie4].each do |attributes|
   Movie.create!(attributes)
  puts "done"
end
puts "Finished!"
