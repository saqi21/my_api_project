class ChangeDefaultValueForPoint < ActiveRecord::Migration[6.0]
  def change
  	change_column_default :employees, :point, from: nil, to: 0
  end
end
