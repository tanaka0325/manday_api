class CreatePoems < ActiveRecord::Migration[5.0]
  def change
    create_table :poems do |t|
      t.references :user, foreign_key: true
      t.date :date, null: false
      t.integer :status, null: false, default: 0
      t.text :body, null: false

      t.timestamps
    end
  end
end
