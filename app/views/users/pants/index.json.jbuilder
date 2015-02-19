json.array!(@pants) do |pant|
  json.extract! pant, :id
  json.url pant_url(pant, format: :json)
end
