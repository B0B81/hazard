class Dangersymbol < ApplicationRecord
  has_and_belongs_to_many :substances
end
