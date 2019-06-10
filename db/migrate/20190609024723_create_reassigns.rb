class CreateReassigns < ActiveRecord::Migration[5.1]
  def change
    create_table :reassigns do |t|
      t.integer :campID, default: 0
      t.boolean :archery, default: false
      t.boolean :riflery, default: false
      t.boolean :canoeing, default: false
      t.boolean :baking, default: false
      t.boolean :camping, default: false
      t.boolean :rocks, default: false
      t.boolean :fishing, default: false
      t.boolean :hiking, default: false
      t.boolean :pottery, default: false
      t.boolean :arts, default: false
      t.boolean :percussion, default: false
      t.boolean :crafts, default: false
      t.boolean :games, default: false
      t.boolean :guitars, default: false
      t.boolean :choir, default: false
      t.boolean :writing, default: false
      t.boolean :weaving, default: false
      t.boolean :notdance, default: false
      t.boolean :painting, default: false
      t.boolean :sign, default: false
      t.boolean :spanish, default: false
      t.boolean :talking, default: false

      t.timestamps
    end
  end
end
