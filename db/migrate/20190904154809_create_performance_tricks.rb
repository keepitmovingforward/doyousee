class CreatePerformanceTricks < ActiveRecord::Migration[6.0]
  def change
    create_table :performance_tricks do |t|
      t.integer :performance_id
      t.integer :trick_id

      t.timestamps
    end
  end
end
