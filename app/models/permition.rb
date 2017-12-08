class Permition < ApplicationRecord
  belongs_to :information_system, inverse_of: :permitions
  has_many :right_group_permitions
  has_many :permition_roles

  
  validates :act, presence: true
  validates :parameter, presence: true
end
