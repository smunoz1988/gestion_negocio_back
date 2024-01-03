class Professional < ApplicationRecord
  validates :name, presence: true
  validates :last_name, presence: true
  validates :document_id, presence: true
  validates :email, presence: true
  validates :phone, presence: true
  validates :role, presence: true
  validates :address, presence: true
  validates :birthday, presence: true
end
