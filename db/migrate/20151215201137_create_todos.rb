class CreateTodos < ActiveRecord::Migration
  def change
    create_table :todos do |t|
      t.string :title
      t.string :content
      t.boolean :is_completed

      t.timestamps null: false
    end
  end
end
