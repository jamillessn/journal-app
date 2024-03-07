class CreateTasks < ActiveRecord::Migration[7.1]
  def change
    create_table :tasks do |t|
      t.text :title
      t.text :desc
      t.date :date
      t.text :category
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end