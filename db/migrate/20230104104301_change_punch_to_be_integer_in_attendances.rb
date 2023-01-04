class ChangePunchToBeIntegerInAttendances < ActiveRecord::Migration[6.0]
  def change
  	change_column :attendances,:punch, :integer, using: 'punch::integer'
  end
end
