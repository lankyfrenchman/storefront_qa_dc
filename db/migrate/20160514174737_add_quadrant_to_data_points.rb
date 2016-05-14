class AddQuadrantToDataPoints < ActiveRecord::Migration
  def change
    add_column :data_points, :quadrant, :string
  end
end
