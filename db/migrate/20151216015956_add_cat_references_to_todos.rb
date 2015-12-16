class AddCatReferencesToTodos < ActiveRecord::Migration
  def change
    add_reference :todos, :cat, index: true, foreign_key: true
  end
end
