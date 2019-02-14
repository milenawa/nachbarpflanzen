class AddNewColumnToPlants < ActiveRecord::Migration[5.2]
  def change
    add_column :plants, :put_outdoors_jan, :boolean
    add_column :plants, :put_outdoors_feb, :boolean
    add_column :plants, :put_outdoors_mar, :boolean
    add_column :plants, :put_outdoors_apr, :boolean
    add_column :plants, :put_outdoors_may, :boolean
    add_column :plants, :put_outdoors_jun, :boolean
    add_column :plants, :put_outdoors_jul, :boolean
    add_column :plants, :put_outdoors_aug, :boolean
    add_column :plants, :put_outdoors_sep, :boolean
    add_column :plants, :put_outdoors_oct, :boolean
    add_column :plants, :put_outdoors_nov, :boolean
    add_column :plants, :put_outdoors_dec, :boolean
  end
end
