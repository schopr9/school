json.array!(@datesheets) do |datesheet|
  json.extract! datesheet, :id, :class_name, :exam, :exam_date
  json.url datesheet_url(datesheet, format: :json)
end
