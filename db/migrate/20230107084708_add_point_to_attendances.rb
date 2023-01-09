class AddPointToAttendances < ActiveRecord::Migration[6.0]
  def change
    add_column :attendances, :point, :integer, default: 0
  end
end
