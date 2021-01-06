class RenameRownToRowInReservations < ActiveRecord::Migration[5.2]
  def change
    rename_column :reservations, :rown, :row 
  end
end
