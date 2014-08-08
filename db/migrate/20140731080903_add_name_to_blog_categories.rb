class AddNameToBlogCategories < ActiveRecord::Migration
  def change
    add_column :blog_categories, :name, :string
  end
end
