class User < ApplicationRecord
  has_many :role_users, inverse_of: :user, dependent: :destroy
  accepts_nested_attributes_for :role_users, allow_destroy: true
  
  validates :ln, presence: true
  validates :fn, presence: true
  validates :bday, presence: true
  validates :email, presence: true, uniqueness: true
  validates :login, presence: true, uniqueness: true
  validates :sex, inclusion: {in: ['ж', 'м'], allow_blank: false}
  
  def self.search(params)
    result = self.all
    if !(params["search"].nil?)
      if !(params['search']['user.ln'].nil?) and !(params['search']['user.ln'].empty?)
        result = result.where("ln ilike ?", "%#{params['search']['user.ln']}%")
      end
      if !(params['search']['user.fn'].nil?) and !(params['search']['user.fn'].empty?)
        result = result.where("fn ilike ?", "%#{params['search']['user.fn']}%")
      end
      if !(params['search']['user.sn'].nil?) and !(params['search']['user.sn'].empty?)
        result = result.where("sn ilike ?", "%#{params['search']['user.sn']}%")
      end
      if !(params['search']['user.email'].nil?) and !(params['search']['user.email'].empty?)
        result = result.where("email ilike ?", "%#{params['search']['user.email']}%")
      end
      if !(params['search']['user.login'].nil?) and !(params['search']['user.login'].empty?)
        result = result.where("login ilike ?", "%#{params['search']['user.login']}%")
      end
      
    end
    return result
  end
  
end
 
