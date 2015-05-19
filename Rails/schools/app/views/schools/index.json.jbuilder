json.array!(@schools) do |school|
  json.extract! school, :id, :student, :teacher, :pet
  json.url school_url(school, format: :json)
end
