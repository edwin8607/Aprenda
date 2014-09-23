json.array!(@equipo_aprendizs) do |equipo_aprendiz|
  json.extract! equipo_aprendiz, :id, :equipo_id, :aprendiz_id
  json.url equipo_aprendiz_url(equipo_aprendiz, format: :json)
end
