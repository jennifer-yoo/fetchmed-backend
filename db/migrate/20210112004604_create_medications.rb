class CreateMedications < ActiveRecord::Migration[6.0]
  def change
    create_table :medications do |t|
      t.string :name
      t.integer :strength
      t.integer :refill
      t.integer :quantity
      t.integer :rxnum
      t.string :instructions

      t.timestamps
    end
  end
end
