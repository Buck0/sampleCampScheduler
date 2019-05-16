class CreateCampers < ActiveRecord::Migration[5.1]
  def change
    create_table :campers do |t|
      t.string :name
      t.integer :archery
      t.integer :riflery
      t.integer :canoeing
      t.integer :dance
      t.integer :drama
      t.integer :puppets
      t.integer :choir
      t.integer :whackers
      t.integer :ropes
      t.integer :camping
      t.integer :baking
      t.integer :crafts
      t.integer :games
      t.integer :guitars
      t.integer :hiking
      t.integer :nature
      t.integer :pottery
      t.integer :sewing
      t.integer :sign
      t.integer :spanish
      t.integer :writing
      t.integer :percussion

      t.timestamps
    end
  end
end
