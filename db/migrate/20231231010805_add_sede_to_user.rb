class AddSedeToUser < ActiveRecord::Migration[7.1]
  def change
    add_column :users, :sede, :string
  end
end
