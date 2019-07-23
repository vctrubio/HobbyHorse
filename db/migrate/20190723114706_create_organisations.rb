class CreateOrganisations < ActiveRecord::Migration[5.2]
  def change
    create_table :organisations do |t|
      t.references :user, foreign_key: true
      t.string :name
      t.string :description
      t.string :city
      t.string :location
      t.integer :rating

      t.timestamps
    end
  end
end
