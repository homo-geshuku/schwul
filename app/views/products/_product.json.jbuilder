json.extract! product, :id, :type, :title, :description, :year_produced, :created_at, :updated_at
json.url product_url(product, format: :json)
