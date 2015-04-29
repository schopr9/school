class Teacher < ActiveRecord::Base
	belongs_to :user
	validates :teacher_id, uniqueness: true
	has_attached_file :photo, :styles => { :small => "150x150>" }
    mount_uploader :image, ImageUploader 
	validates_attachment_content_type :photo, :content_type => ['image/jpg', 'image/png']
end
