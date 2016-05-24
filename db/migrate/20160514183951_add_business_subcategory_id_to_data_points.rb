class AddBusinessSubcategoryIdToDataPoints < ActiveRecord::Migration
  def change
    add_column :data_points, :business_subcategory_id, :integer
  end
end
