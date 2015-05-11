class Student < ActiveRecord::Base
	has_many :classgroups
	has_many :reports
	mount_uploader :stud_image, ImageUploader
end
