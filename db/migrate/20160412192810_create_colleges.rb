class CreateColleges < ActiveRecord::Migration
  def change
    create_table :colleges do |t|
      t.string :name
      t.string :address
      t.string :city
      t.string :state
      t.string :zip
      t.string :univ_id
      t.string :link
      t.string :user_id

      t.timestamps null: false
    end
  end
end
