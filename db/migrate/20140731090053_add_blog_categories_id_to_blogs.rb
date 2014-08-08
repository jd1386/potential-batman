class AddBlogCategoriesIdToBlogs < ActiveRecord::Migration
  def change
    add_column :blogs, :blog_categories_id, :integer
    add_index :blogs, :blog_categories_id
  end
end
