json.array!(@students) do |student|
  json.extract! student, :id, :stud_name, :stud_dob, :gender, :address, :email, :stud_image
  json.url student_url(student, format: :json)
end
