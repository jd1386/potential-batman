class AddSpentOnToCalculate < ActiveRecord::Migration
  def change
    add_column :calculates, :spent_on, :integer
  end
end
