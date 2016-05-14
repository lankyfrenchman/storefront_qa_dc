class AddLocationsToDataPoints < ActiveRecord::Migration
  def change
    add_column :data_points, :number, :string
    add_column :data_points, :address_1, :string
    add_column :data_points, :address_2, :string
    add_column :data_points, :zip, :string
  end
end
