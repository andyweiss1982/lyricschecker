json.array!(@year_objs) do |year_obj|
  json.extract! year_obj, :id, :num
  json.url year_obj_url(year_obj, format: :json)
end
