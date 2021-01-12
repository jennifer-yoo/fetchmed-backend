class CreateDoctors < ActiveRecord::Migration[6.0]
  def change
    create_table :doctors do |t|
      t.string :speciality
      t.belongs_to :user
      t.timestamps
    end
  end
end
