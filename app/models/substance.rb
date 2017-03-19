class Substance < ApplicationRecord
  belongs_to :user
  has_and_belongs_to_many :hphrases
  has_and_belongs_to_many :pphrases
  has_and_belongs_to_many :rphrases
end
