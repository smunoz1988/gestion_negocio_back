class AddFieldsToUser < ActiveRecord::Migration[7.1]
  def change
    add_column :users, :name, :string
    add_column :users, :last_name, :string
    add_column :users, :document_id, :string
    add_column :users, :address, :string
    add_column :users, :phone, :string
    add_column :users, :role, :string
  end
end
