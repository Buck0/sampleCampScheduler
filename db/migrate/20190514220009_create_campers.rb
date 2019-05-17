class CreateCampers < ActiveRecord::Migration[5.1]
  def change
    create_table :campers do |t|
      t.string :name
      t.integer :archery, default: 9
      t.integer :riflery, default: 9
      t.integer :canoeing, default: 9
      t.integer :baking, default: 9
      t.integer :camping, default: 9
      t.integer :rocks, default: 9
      t.integer :fishing, default: 9
      t.integer :hiking, default: 9
      t.integer :pottery, default: 9
      t.integer :arts, default: 9
      t.integer :percussion, default: 9
      t.integer :crafts, default: 9
      t.integer :games, default: 9
      t.integer :guitars, default: 9

      t.timestamps
    end
  end
end
