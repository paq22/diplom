class RoleGroupRight < ApplicationRecord
  belongs_to :role
  belongs_to :group_right
  
  validates :parameter, presence: true
end
