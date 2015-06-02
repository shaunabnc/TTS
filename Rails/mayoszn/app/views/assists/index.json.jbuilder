json.array!(@assists) do |assist|
  json.extract! assist, :id, :message, :user_id
  json.url assist_url(assist, format: :json)
end
