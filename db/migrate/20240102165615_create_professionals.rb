class CreateProfessionals < ActiveRecord::Migration[7.1]
  def change
    create_table :professionals do |t|
      t.string :name
      t.string :last_name
      t.string :document_id
      t.string :email
      t.string :phone
      t.string :role
      t.string :address
      t.date :birthday
      

      t.timestamps
    end
  end
end
