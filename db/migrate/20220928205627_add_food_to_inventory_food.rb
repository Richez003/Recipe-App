# frozen_string_literal: true

class AddFoodToInventoryFood < ActiveRecord::Migration[7.0]
  def change
    add_reference :inventory_foods, :food, null: false, foreign_key: true
  end
end
