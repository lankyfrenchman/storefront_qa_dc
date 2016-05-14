class AddGeolocationToDataPoints < ActiveRecord::Migration
  def change
    add_column :data_points, :latitude, :string
    add_column :data_points, :longitude, :string
  end
end
