class RemovePointFromEmployees < ActiveRecord::Migration[6.0]
  def change
    remove_column :employees, :point, :integer
  end
end
