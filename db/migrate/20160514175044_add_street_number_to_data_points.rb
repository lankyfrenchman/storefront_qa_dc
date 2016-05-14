class AddStreetNumberToDataPoints < ActiveRecord::Migration
  def change
    add_column :data_points, :street_number, :string
  end
end
