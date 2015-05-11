json.array!(@reports) do |report|
  json.extract! report, :id, :student_id, :class_name, :class_year, :exam_name, :subject_1, :marks_1, :subject_2, :marks_2, :subject_3, :marks_3, :subject_4, :marks_4, :subject_5, :marks_5, :subject_6, :marks_6, :subject_7, :marks_7, :subject_8, :marks_8, :subject_9, :marks_9, :subject_10, :marks_10, :comment, :rank
  json.url report_url(report, format: :json)
end
