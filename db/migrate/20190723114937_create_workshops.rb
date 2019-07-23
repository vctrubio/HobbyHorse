class CreateWorkshops < ActiveRecord::Migration[5.2]
  def change
    create_table :workshops do |t|
      t.references :organisation, foreign_key: true
      t.datetime :date
      t.integer :capacity
      t.integer :price

      t.timestamps
    end
  end
end
