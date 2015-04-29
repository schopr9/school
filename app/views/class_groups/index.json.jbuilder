json.array!(@class_groups) do |class_group|
  json.extract! class_group, :id, :class_name, :year, :student_id
  json.url class_group_url(class_group, format: :json)
end
