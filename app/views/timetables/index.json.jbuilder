json.array!(@timetables) do |timetable|
  json.extract! timetable, :id, :class_num, :day_ofweek, :subject_1, :subject_2, :subject_3, :subject_4, :subject_5, :subject_6, :subject_7, :subject_8, :subject_9, :subject_10
  json.url timetable_url(timetable, format: :json)
end
