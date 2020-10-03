class Order < ApplicationRecord
  validates :email, :address_1, :city, :state, :zip, presence: true
end
