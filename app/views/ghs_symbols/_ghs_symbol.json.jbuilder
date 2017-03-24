json.extract! ghs_symbol, :id, :title, :code, :description, :handling, :image, :created_at, :updated_at
json.url ghs_symbol_url(ghs_symbol, format: :json)
