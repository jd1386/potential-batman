json.array!(@calculates) do |calculate|
  json.extract! calculate, :id, :name, :money_spent
  json.url calculate_url(calculate, format: :json)
end
