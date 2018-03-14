class ModeratorController < ApplicationController
  def load_term_data_form_json
  end
  
  def load_term_data_from_json_commit
  
    f=File.new(params[:jsonfile].path(),'r')
    p=f.read
    f.close
    js = JSON.parse(p)
    js.each do |elem|
      sp = BranchTree.new
      elem.each do |field, value|
        sp[field] = value
      end
      sp.save
    end
  end
  
  def load_student_data_form_json
  end
end

