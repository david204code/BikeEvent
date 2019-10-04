class CreateRiders < ActiveRecord::Migration[6.0]
  def change
    create_table :riders do |t|
      t.string :firstname
      t.string :lastname
      t.string :city_of_origin
      t.string :state_of_origin
      t.float :latitude
      t.float :longitude

      t.timestamps
    end
  end
end
