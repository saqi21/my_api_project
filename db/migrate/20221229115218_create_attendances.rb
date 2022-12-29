class CreateAttendances < ActiveRecord::Migration[6.0]
  def change
    create_table :attendances do |t|
      t.integer :user_id
      t.datetime :timestamp
      t.boolean :status
      t.boolean :punch

      t.timestamps
    end
  end
end
