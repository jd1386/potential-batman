class CreateCalculates < ActiveRecord::Migration
  def change
    create_table :calculates do |t|
      t.string :name
      t.integer :money_spent

      t.timestamps
    end
  end
end
