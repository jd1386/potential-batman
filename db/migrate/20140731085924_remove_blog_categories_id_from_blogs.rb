class RemoveBlogCategoriesIdFromBlogs < ActiveRecord::Migration
  def change
    remove_column :blogs, :blog_categories_id, :integer
  end
end
