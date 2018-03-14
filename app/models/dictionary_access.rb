class DictionaryAccess < ApplicationRecord
  belongs_to :information_system, inverse_of: :dictionary_accesses
  
  validates :name, presence: true, uniqueness: true
  validates :access_key, presence: true, uniqueness: true
end
