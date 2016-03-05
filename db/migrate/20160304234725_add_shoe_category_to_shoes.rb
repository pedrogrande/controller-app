class AddShoeCategoryToShoes < ActiveRecord::Migration
  def change
    add_reference :shoes, :shoe_category, index: true, foreign_key: true
  end
end
