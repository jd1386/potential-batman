class Blog < ActiveRecord::Base
	has_and_belongs_to_many :blog_categories
	accepts_nested_attributes_for :blog_categories

	validates_presence_of :content
end
