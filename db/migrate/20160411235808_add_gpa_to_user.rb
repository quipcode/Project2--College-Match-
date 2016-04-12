class AddGpaToUser < ActiveRecord::Migration
  def change
    add_column :users, :gpa, :float
    add_column :users, :current_school, :string
    add_column :users, :first_name, :string
    add_column :users, :last_name, :string
    add_column :users, :dob, :date
  end
end
