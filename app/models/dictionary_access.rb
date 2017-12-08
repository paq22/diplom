class DictionaryAccess < ApplicationRecord
  belongs_to :information_system
  
  validates :name, presence: true, uniqueness: true
  validates :access_key, presence: true, uniqueness: true
end
