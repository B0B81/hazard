class Substance < ApplicationRecord
  belongs_to :user
  belongs_to :company
  has_and_belongs_to_many :hazard_symbols
  has_and_belongs_to_many :ghs_symbols
  has_and_belongs_to_many :hphrases
  has_and_belongs_to_many :pphrases
  has_and_belongs_to_many :rphrases

  has_attached_file :datasheet, styles: { thumb: ["60x60#", :jpg] }
  validates_attachment :datasheet, content_type: { content_type: "application/pdf" }
  validates :title, presence: true, uniqueness: true
  validates :date, presence: true
  validates :company_id, presence: true

end
