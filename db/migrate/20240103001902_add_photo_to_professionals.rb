class AddPhotoToProfessionals < ActiveRecord::Migration[7.1]
  def change
    add_column :professionals, :photo, :string
  end
end
