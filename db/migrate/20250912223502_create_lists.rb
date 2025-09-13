class CreateLists < ActiveRecord::Migration[8.0]
  def change
    create_table :lists do |t|
      t.string :title
      t.references :project, null: false, foreign_key: true
      t.integer :position

      t.timestamps
    end
  end
end
