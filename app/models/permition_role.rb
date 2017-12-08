class PermitionRole < ApplicationRecord
  belongs_to :role
  belongs_to :permition
  
  validates :parameter, presence: true
end
