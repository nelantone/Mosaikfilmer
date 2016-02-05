json.array!(@movies) do |movie|
  json.extract! movie, :id, :name, :category, :country, :year, :score, :opinion, :actors
  json.url movie_url(movie, format: :json)
end
