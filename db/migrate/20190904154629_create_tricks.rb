class CreateTricks < ActiveRecord::Migration[6.0]
  def change
    create_table :tricks do |t|
      t.string :name
      t.integer :difficulty
      t.string :image

      t.timestamps
    end
  end
end
