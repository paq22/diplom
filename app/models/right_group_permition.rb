class RightGroupPermition < ApplicationRecord
  belongs_to :permition
  belongs_to :group_right, inverse_of: :right_group_permitions
  
  validates :parameter, presence: true
end
