class CreateOrders < ActiveRecord::Migration[6.0]
  def change
    create_table :orders do |t|
      t.integer :patient_id
      t.integer :medication_id
      t.string :confirmation_num

      t.timestamps
    end
  end
end
