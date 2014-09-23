json.array!(@instructors) do |instructor|
  json.extract! instructor, :id, :nombre, :apellidos, :genero, :identificacion, :email, :titulo, :centro_id
  json.url instructor_url(instructor, format: :json)
end
