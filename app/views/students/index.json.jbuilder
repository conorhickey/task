json.array!(@students) do |student|
  json.extract! student, :id, :username, :name, :other , :d ,:e
  json.url student_url(student, format: :json)
end
