class User < ApplicationRecord
  has_many :role_users, inverse_of: :user
  accepts_nested_attributes_for :role_users, allow_destroy: true
  
  validates :ln, presence: true
  validates :fn, presence: true
  validates :bday, presence: true
  validates :email, presence: true, uniqueness: true
  validates :login, presence: true, uniqueness: true
  validates :sex, inclusion: {in: ['ж', 'м'], allow_blank: false}
end
 
