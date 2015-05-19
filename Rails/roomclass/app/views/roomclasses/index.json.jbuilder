json.array!(@roomclasses) do |roomclass|
  json.extract! roomclass, :id, :student, :teacher, :pet
  json.url roomclass_url(roomclass, format: :json)
end
