json.array!(@line_items) do |line_item|
  json.extract! line_item, :id, :gear_id, :memeber_id
  json.url line_item_url(line_item, format: :json)
end
