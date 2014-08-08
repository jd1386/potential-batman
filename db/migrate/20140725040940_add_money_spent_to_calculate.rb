class AddMoneySpentToCalculate < ActiveRecord::Migration
  def change
    add_column :calculates, :money_spent, :decimal
  end
end
