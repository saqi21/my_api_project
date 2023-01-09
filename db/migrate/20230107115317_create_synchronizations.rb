class CreateSynchronizations < ActiveRecord::Migration[6.0]
  def change
    create_table :synchronizations do |t|
      t.datetime :last_sync

      t.timestamps
    end
  end
end
