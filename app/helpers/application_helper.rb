module ApplicationHelper
  def rus_date(date)
    return "#{date.day}.#{date.month}.#{date.year}"
  end
  
  def value_for_form_text_field(str)
    if !(params['search'].nil?)
      if !(params['search'][str].nil?)
        return params['search'][str]
      end
    end
    return nil
  end
  
  def is_search_params_empty?
    if !(params['search'].nil?)
      flag = true
      params['search'].each do |p|
        if !(p[1].empty?)
          flag = false
          break
        end
      end
      return flag
    else
      return true
    end
  end
end
