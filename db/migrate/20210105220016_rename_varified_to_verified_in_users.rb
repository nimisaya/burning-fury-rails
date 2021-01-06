class RenameVarifiedToVerifiedInUsers < ActiveRecord::Migration[5.2]
  def change
    rename_column :users, :varified, :verified
  end
end
