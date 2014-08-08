class AddDailySumToCalculates < ActiveRecord::Migration
  def change
    add_column :calculates, :daily_sum, :decimal
  end
end
