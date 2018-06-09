class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  
  before_filter :qq2
  
  def qq2
    if controller_name == 'sessions' and action_name == 'new'
      @layout = :empty
    else
      @layout = :common
    end
  end
end
