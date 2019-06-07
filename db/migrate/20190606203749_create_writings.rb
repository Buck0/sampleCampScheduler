class CreateWritings < ActiveRecord::Migration[5.1]
  def change
    create_table :writings do |t|
      t.text :list, array: true, default: []

      t.timestamps
    end
  end
end
