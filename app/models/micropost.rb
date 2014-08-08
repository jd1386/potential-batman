class Micropost < ActiveRecord::Base
	belongs_to :user
	default_scope -> { order('created_at desc') }
	
	validates :user_id, presence: true
	
	has_attached_file :image, 
		:styles => { :medium => "300x300>", :thumb => "100x100>" },
		:path => ":rails_root/public/images/:style/:filename.:extension",
		:default_url => ":rails_root/public/images/:style/:filename.:extension"

	validates_attachment_size :image, :less_than => 10.megabytes

	validates_attachment_content_type :image, 
		:content_type => { :content_type => ["image/jpeg", "image/jpg", "image/gif", "image/png"] }
end
