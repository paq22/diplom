class RoleUser < ApplicationRecord
  belongs_to :user, inverse_of: :role_users
  belongs_to :role
  belongs_to :information_system
  
  validates :parameter, presence: true

  
end
