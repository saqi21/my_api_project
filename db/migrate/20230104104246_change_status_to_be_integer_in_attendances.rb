class ChangeStatusToBeIntegerInAttendances < ActiveRecord::Migration[6.0]
  def change
  	change_column :attendances,:status, :integer, using: 'status::integer'
  end
end
