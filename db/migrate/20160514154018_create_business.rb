class CreateBusiness < ActiveRecord::Migration
  def change
    create_table :businesses do |t|
      t.string :name
      t.integer :storefront_id
      t.string :business_type
      t.timestamps
    end
  end
end
