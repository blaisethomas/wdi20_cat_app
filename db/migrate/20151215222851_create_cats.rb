class CreateCats < ActiveRecord::Migration
  def change
    create_table :cats do |t|
      t.string :name
      t.string :hair_color
      t.string :breed
      t.integer :age
      t.string :gender

      t.timestamps null: false
    end
  end
end
