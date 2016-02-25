json.array!(@gangplank_initiatives) do |gangplank_initiative|
  json.extract! gangplank_initiative, :id, :name
  json.url gangplank_initiative_url(gangplank_initiative, format: :json)
end
