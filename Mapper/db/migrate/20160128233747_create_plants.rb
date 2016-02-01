class CreatePlants < ActiveRecord::Migration
  def change
    create_table :plants do |t|
      t.string :company
      t.string :city
      t.string :state
      t.string :use_type
      t.float :longitude
      t.float :latitude

      t.timestamps null: false
    end
  end
end
