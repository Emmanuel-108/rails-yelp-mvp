class ChangeCategoryToStringInRestaurants < ActiveRecord::Migration[7.1]
  def change
    change_column :restaurants, :category, :string, null: false
  end
end
