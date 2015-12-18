class AddPasswordDigestToCat < ActiveRecord::Migration
  def change
    add_column :cats, :password_digest, :string
  end
end
