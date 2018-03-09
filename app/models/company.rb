class Company < ApplicationRecord
  has_many :substances
  validates :name, presence: true, uniqueness: true
end
