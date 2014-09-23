json.array!(@equipos) do |equipo|
  json.extract! equipo, :id, :nombre_equipo
  json.url equipo_url(equipo, format: :json)
end
