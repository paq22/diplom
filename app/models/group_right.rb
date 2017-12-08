class GroupRight < ApplicationRecord
  belongs_to :information_system
  has_many :role_group_rights
  has_many :right_group_permitions, inverse_of: :group_right
  accepts_nested_attributes_for :right_group_permitions, allow_destroy: true


 
  validates :group_name, presence: true, uniqueness: true
  validates :parameter, presence: true
end
