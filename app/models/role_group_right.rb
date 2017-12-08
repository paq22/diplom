class RoleGroupRight < ApplicationRecord
  belongs_to :role, inverse_of: :role_group_rights
  belongs_to :group_right
  
  validates :parameter, presence: true
end
