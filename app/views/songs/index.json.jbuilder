json.array!(@songs) do |song|
  json.extract! song, :id, :lyrics
  json.url song_url(song, format: :json)
end
