json.array!(@haikus) do |haiku|
  json.extract! haiku, :poem, :user_id
  json.url haiku_url(haiku, format: :json)
end