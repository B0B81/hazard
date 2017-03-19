class Hphrase < ApplicationRecord
  has_and_belongs_to_many :substances
end
