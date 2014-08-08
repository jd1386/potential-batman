class RemoveSpentOnFromCalculates < ActiveRecord::Migration
  def change
    remove_column :calculates, :spent_on, :integer
  end
end
