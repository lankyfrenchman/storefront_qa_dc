class CreateBusinessSubcategory < ActiveRecord::Migration
  def change
    create_table :business_subcategories do |t|
      t.string :name
      t.integer :business_category_id
      t.timestamps
    end
  end
end
