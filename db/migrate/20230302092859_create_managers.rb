class CreateManagers < ActiveRecord::Migration[7.0]
  def change
    create_table :managers do |t|
      t.string :name
      t.string :contact
      t.references :Department, null: false, foreign_key: true

      t.timestamps
    end
  end
end
