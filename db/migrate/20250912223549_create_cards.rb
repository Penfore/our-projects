class CreateCards < ActiveRecord::Migration[8.0]
  def change
    create_table :cards do |t|
      t.string :title
      t.text :description
      t.references :list, null: false, foreign_key: true
      t.integer :position
      t.date :due_date
      t.references :assignee, foreign_key: { to_table: :users }

      t.timestamps
    end
  end
end
