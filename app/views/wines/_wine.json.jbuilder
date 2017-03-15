json.extract! wine, :id, :wine_id, :year, :vineyard_id, :varietal_id, :created_at, :updated_at
json.url wine_url(wine, format: :json)
