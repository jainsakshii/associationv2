class CreateManagerHistories < ActiveRecord::Migration[7.0]
  def change
    create_table :manager_histories do |t|
      t.string :total_experience
      t.references :manager, null: false, foreign_key: true

      t.timestamps
    end
  end
end
