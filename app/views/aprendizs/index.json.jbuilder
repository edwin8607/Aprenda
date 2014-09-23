json.array!(@aprendizs) do |aprendiz|
  json.extract! aprendiz, :id, :nombres, :apellido, :genero, :identificacion, :email, :ficha_id
  json.url aprendiz_url(aprendiz, format: :json)
end
