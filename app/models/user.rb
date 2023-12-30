class User < ApplicationRecord
  include Devise::JWT::RevocationStrategies::JTIMatcher
  validates :email, presence: true, uniqueness: true
  validates :password, presence: true
  validates :password_confirmation, presence: true
  validates :name, presence: true
  validates :last_name, presence: true
  validates :document_id, presence: true
  validates :address, presence: true
  validates :phone, presence: true

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable, :jwt_authenticatable, jwt_revocation_strategy: self
end
