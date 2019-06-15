class CreateLinks < ActiveRecord::Migration[5.1]
  def change
    create_table :links do |t|
      t.boolean :on, default: false

      t.timestamps
    end
  end
end
