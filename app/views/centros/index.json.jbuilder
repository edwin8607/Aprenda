json.array!(@centros) do |centro|
  json.extract! centro, :id, :nombre_centro, :ciudad, :codigo, :regional_id
  json.url centro_url(centro, format: :json)
end
