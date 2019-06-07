class CreateNotdances < ActiveRecord::Migration[5.1]
  def change
    create_table :notdances do |t|
      t.text :list, array: true, default: []

      t.timestamps
    end
  end
end
