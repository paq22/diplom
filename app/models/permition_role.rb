class PermitionRole < ApplicationRecord
  belongs_to :role, inverse_of: :permition_roles
  belongs_to :permition
  
  validates :parameter, presence: true
end
