class AddSpentOnToCalculates < ActiveRecord::Migration
  def change
    add_column :calculates, :spent_on, :datetime
  end
end
