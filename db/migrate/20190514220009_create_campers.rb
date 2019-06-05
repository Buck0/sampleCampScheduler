class CreateCampers < ActiveRecord::Migration[5.1]
  def change
    create_table :campers do |t|
      t.string :name
      t.integer :archery, default: 9
      t.boolean :isArch, default: false
      t.integer :riflery, default: 9
      t.boolean :isRif, default: false
      t.integer :canoeing, default: 9
      t.boolean :isCan, default: false
      t.integer :baking, default: 9
      t.boolean :isBake, default: false
      t.integer :camping, default: 9
      t.boolean :isCamp, default: false
      t.integer :rocks, default: 9
      t.boolean :isRock, default: false
      t.integer :fishing, default: 9
      t.boolean :isFish, default: false
      t.integer :hiking, default: 9
      t.boolean :isHike, default: false
      t.integer :pottery, default: 9
      t.boolean :isPot, default: false
      t.integer :arts, default: 9
      t.boolean :isArt, default: false
      t.integer :percussion, default: 9
      t.boolean :isPer, default: false
      t.integer :crafts, default: 9
      t.boolean :isCraft, default: false
      t.integer :games, default: 9
      t.boolean :isGame, default: false
      t.integer :guitars, default: 9
      t.boolean :isGuit, default: false
      
      t.integer :choir, default: 9
      t.boolean :isChoir, default: false
      t.integer :writing, default: 9
      t.boolean :isWrite, default: false
      t.integer :weaving, default: 9
      t.boolean :isWeave, default: false
      t.integer :painting, default: 9
      t.boolean :isPaint, default: false
      t.integer :sign, default: 9
      t.boolean :isSign, default: false
      t.integer :spanish, default: 9
      t.boolean :isSpan, default: false
      t.integer :talking, default: 9
      t.boolean :isTalk, default: false
      t.integer :notdance, default: 9
      t.boolean :isNotdance, default: false

      t.timestamps
    end
  end
end
