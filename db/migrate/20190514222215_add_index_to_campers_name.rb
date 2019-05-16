class AddIndexToCampersName < ActiveRecord::Migration[5.1]
  def change
    add_index :campers, :name, unique: true
  end
end
