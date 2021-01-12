class CreatePatients < ActiveRecord::Migration[6.0]
  def change
    create_table :patients do |t|
      t.belongs_to :user
      t.timestamps
    end
  end
end
