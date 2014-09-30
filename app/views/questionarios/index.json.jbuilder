json.array!(@questionarios) do |questionario|
  json.extract! questionario, :id, :pregunta, :tema_id
  json.url questionario_url(questionario, format: :json)
end
