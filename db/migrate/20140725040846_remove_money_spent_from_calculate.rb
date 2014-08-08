class RemoveMoneySpentFromCalculate < ActiveRecord::Migration
  def change
    remove_column :calculates, :money_spent, :string
  end
end
