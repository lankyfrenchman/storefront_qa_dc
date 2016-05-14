class CreateDataPoint < ActiveRecord::Migration
  def change
    create_table :data_points do |t|
      t.boolean :vacant
      t.integer :outside_condition
      t.integer :inside_condition
      t.integer :commercial
      t.string :photo_url
      t.timestamps
    end
  end
end
