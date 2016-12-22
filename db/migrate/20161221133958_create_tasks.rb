class CreateTasks < ActiveRecord::Migration[5.0]
  def change
    create_table :tasks do |t|
      t.references :user, foreign_key: true
      t.date :date, null: false
      t.integer :status, null: false, default: 0
      t.text :body, null: false
      t.integer :priority, null: false, default: 0

      t.timestamps
    end
  end
end
