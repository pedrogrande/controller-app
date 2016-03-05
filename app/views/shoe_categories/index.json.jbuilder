json.array!(@shoe_categories) do |shoe_category|
  json.extract! shoe_category, :id, :name, :description
  json.url shoe_category_url(shoe_category, format: :json)
end
