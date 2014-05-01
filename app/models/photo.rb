class Photo < ActiveRecord::Base
	belongs_to :gallery
	has_many :comments, as: :commentable
	mount_uploader :picture, PictureUploader
end
