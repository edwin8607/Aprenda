json.array!(@solucions) do |solucion|
  json.extract! solucion, :id, :respuesta, :questionario_id
  json.url solucion_url(solucion, format: :json)
end
