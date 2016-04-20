class AddFromAndToToDebt < ActiveRecord::Migration
  def change
    add_column :debts, :from_id, :integer
    add_column :debts, :to_id, :integer
  end
end
