class Student < ActiveRecord::Base
	has_many :classgroups
	mount_uploader :stud_image, ImageUploader
end
