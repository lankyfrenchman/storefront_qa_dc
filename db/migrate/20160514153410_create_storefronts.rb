class CreateStorefronts < ActiveRecord::Migration
  def change
    create_table :storefronts do |t|
      t.string :street_number
      t.string :address_1
      t.string :address_2
      t.string :zip
      t.timestamps
    end
  end
end
