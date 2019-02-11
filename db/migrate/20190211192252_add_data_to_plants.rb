class AddDataToPlants < ActiveRecord::Migration[5.2]
  def change
    add_column :plants, :location_requirement, :string
    add_column :plants, :fertilizer_requirement, :string
    add_column :plants, :root_type, :string
    add_column :plants, :water_requirement, :string
    add_column :plants, :seed_outdoors, :boolean
    add_column :plants, :dist_to_neighbor, :int
    add_column :plants, :crop_time, :int
  end
end
