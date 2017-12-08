class Role < ApplicationRecord
    has_many :permition_roles
    has_many :role_group_rights
    has_many :role_users
    
    validates :notation, presence: true, uniqueness: true
    validates :name, presence: true, uniqueness: true
    validates :short_name, presence: true, uniqueness: true
end
