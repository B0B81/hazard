class Substance < ApplicationRecord
  belongs_to :user
  belongs_to :company
  has_and_belongs_to_many :hazard_symbols
  has_and_belongs_to_many :ghs_symbols
  has_and_belongs_to_many :hphrases
  has_and_belongs_to_many :pphrases
  has_and_belongs_to_many :rphrases
end
