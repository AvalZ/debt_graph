class CreateParticipants < ActiveRecord::Migration
  def change
    create_table :participants do |t|
      t.string :name
      t.string :surname
      t.references :group, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
