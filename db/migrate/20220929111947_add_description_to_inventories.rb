class AddDescriptionToInventories < ActiveRecord::Migration[7.0]
  def change
    add_reference :inventories, :description, null: false, foreign_key: true
  end
end
