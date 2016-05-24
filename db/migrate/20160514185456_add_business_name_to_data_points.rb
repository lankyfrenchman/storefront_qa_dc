class AddBusinessNameToDataPoints < ActiveRecord::Migration
  def change
    add_column :data_points, :business_name, :string
  end
end
