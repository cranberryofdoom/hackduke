json.array!(@prizes) do |prize|
  json.extract! prize, :id
  json.url prize_url(prize, format: :json)
end
