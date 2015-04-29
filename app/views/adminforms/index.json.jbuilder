json.array!(@adminforms) do |adminform|
  json.extract! adminform, :id, :Name_of_student, :Gender, :Class, :Date_of_birth, :Category, :Nationality, :Father_name, :Mother_name, :Address_line_1-_string, :Address_line2, :City, :State, :Pin_code, :Email, :Phone, :Father_occupation_-string, :Highest_degree_1, :Annual_income_1, :Mother_occupation, :Highest_degree_2, :Annual_income_2
  json.url adminform_url(adminform, format: :json)
end
