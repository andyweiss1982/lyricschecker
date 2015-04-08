json.array!(@billboard_dates) do |billboard_date|
  json.extract! billboard_date, :id, :day
  json.url billboard_date_url(billboard_date, format: :json)
end
