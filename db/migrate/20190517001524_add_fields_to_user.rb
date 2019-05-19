class AddFieldsToUser < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :user_name, :string, null: false, default: ""
    add_column :users, :name, :string
    add_column :users, :last_name, :string
    add_column :users, :phone, :string
    add_column :users, :profession, :string
  end
end
