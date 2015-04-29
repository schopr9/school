json.array!(@teachers) do |teacher|
  json.extract! teacher, :id, :teacher_id, :about_me
  json.url teacher_url(teacher, format: :json)
end
