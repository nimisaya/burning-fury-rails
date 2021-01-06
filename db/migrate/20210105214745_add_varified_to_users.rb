class AddVarifiedToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :varified, :boolean
  end
end
