class InformationSystem < ApplicationRecord
  has_many :dictionary_accesses, inverse_of: :information_system
  has_many :permitions, inverse_of: :information_system
  has_many :group_rights
  accepts_nested_attributes_for :permitions, allow_destroy: true
  accepts_nested_attributes_for :dictionary_accesses, allow_destroy: true
  
  validates :name, presence: true, uniqueness: true
  validates :link, presence: true
  validates :access_key, presence: true, uniqueness: true
end
