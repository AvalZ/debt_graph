class CreateDebts < ActiveRecord::Migration
  def change
    create_table :debts do |t|
      t.decimal :amount, precision: 8, scale: 2

      t.timestamps null: false
    end
  end
end
