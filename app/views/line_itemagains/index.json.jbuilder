json.array!(@line_itemagains) do |line_itemagain|
  json.extract! line_itemagain, :id, :gear_id, :student_id
  json.url line_itemagain_url(line_itemagain, format: :json)
end
