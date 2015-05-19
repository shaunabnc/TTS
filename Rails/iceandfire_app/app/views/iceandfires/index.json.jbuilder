json.array!(@iceandfires) do |iceandfire|
  json.extract! iceandfire, :id, :title, :book, :purchased, :pages, :current, :page, :finish
  json.url iceandfire_url(iceandfire, format: :json)
end
