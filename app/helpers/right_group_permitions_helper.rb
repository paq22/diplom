module RightGroupPermitionsHelper
  def link_to_add_right_group_permition(form, person)
    new_object = RightGroupPermition.new()
    fields = form.fields_for(:right_group_permitions, new_object, 
      :child_index => 'new_right_group_permition') do |builder|
      render('group_rights/add_right_group_permition', fn: builder)
    end
    link_to(?#, class: 'btn mbottom20 btn-info', 
        id: 'add_right_group_permition_link', data: {content: "#{fields}"}) do 
      " Новый комментарий" 
    end
  end
  
  def link_to_remove_right_group_permition(form)  
    form.hidden_field(:_destroy, class: 'remove_fields') + 
        link_to(?#, class: 'remove_fields remove_right_group_permition btn btn-danger') do 
          icon('fas', 'times')     
    end
  end
end
