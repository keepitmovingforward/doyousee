class CreatePerformances < ActiveRecord::Migration[6.0]
  def change
    create_table :performances do |t|
      t.string :date
      t.string :venue
      t.integer :magician_id

      t.timestamps
    end
  end
end
