class CreateProjects < ActiveRecord::Migration[7.0]
  def change
    create_table :projects do |t|
      t.string :name
      t.text :description
      t.datetime :completion_date
      t.references :organization, null: false, foreign_key: true

      t.timestamps
    end
  end
end
