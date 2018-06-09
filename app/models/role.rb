class Role < ApplicationRecord
    has_many :permition_roles, inverse_of: :role, dependent: :destroy
    has_many :role_group_rights, inverse_of: :role, dependent: :destroy
    has_many :role_users, dependent: :destroy
    accepts_nested_attributes_for :role_group_rights, allow_destroy: true
    accepts_nested_attributes_for :permition_roles, allow_destroy: true

    validates :notation, presence: true, uniqueness: true
    validates :name, presence: true, uniqueness: true
    validates :short_name, presence: true, uniqueness: true
end
