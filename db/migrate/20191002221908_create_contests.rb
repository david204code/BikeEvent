class CreateContests < ActiveRecord::Migration[6.0]
  def change
    create_table :contests do |t|
      t.string :firstname
      t.string :lastname
      t.string :email
      t.string :slogan

      t.timestamps
    end
  end
end
