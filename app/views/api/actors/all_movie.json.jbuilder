json.array! @movies.each do |movie|
  json.movie movie.title
  json.movie movie.year
  json.movie movie.plot

end