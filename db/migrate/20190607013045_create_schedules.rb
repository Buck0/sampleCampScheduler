class CreateSchedules < ActiveRecord::Migration[5.1]
  def change
    create_table :schedules do |t|
      t.integer :slot, default: 0
      t.boolean :isArch, default: true
      t.boolean :isRif, default: true
      t.boolean :isCan, default: true
      t.boolean :isBake, default: true
      t.boolean :isCamp, default: true
      t.boolean :isRock, default: true
      t.boolean :isFish, default: true
      t.boolean :isHike, default: true
      t.boolean :isPot, default: true
      t.boolean :isArt, default: true
      t.boolean :isPer, default: true
      t.boolean :isCraft, default: true
      t.boolean :isGame, default: true
      t.boolean :isGuit, default: true
      t.boolean :isChoir, default: true
      t.boolean :isWrite, default: true
      t.boolean :isWeave, default: true
      t.boolean :isNotdance, default: true
      t.boolean :isPaint, default: true
      t.boolean :isSign, default: true
      t.boolean :isSpan, default: true
      t.boolean :isTalk, default: true

      t.timestamps
    end
  end
end
