class Restaurant < ApplicationRecord
  validates :name, :address, :category, :phone_number, presence: true
  has_many :reviews, dependent: :destroy
end
