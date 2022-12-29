class CreateEmployees < ActiveRecord::Migration[6.0]
  def change
    create_table :employees do |t|
      t.string :name
      t.integer :privilege
      t.integer :user_id

      t.timestamps
    end
  end
end
