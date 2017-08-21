class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :substances

  enum role: [:user, :editor, :admin, :compony_doctor, :safety_specialist, :hazard_substance_officer ]
  after_initialize :set_default_role, :if => :new_record?

  def set_default_role
    self.role ||= :user
  end
end
