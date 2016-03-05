json.array!(@shoes) do |shoe|
  json.extract! shoe, :id, :name, :description, :price, :picture, :user_id
  json.url shoe_url(shoe, format: :json)
end
