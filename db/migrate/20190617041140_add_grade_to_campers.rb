class AddGradeToCampers < ActiveRecord::Migration[5.1]
  def change
    add_column :campers, :grade, :integer, default: 1
  end
end
