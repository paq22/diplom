module RoleGroupRightsHelper
  def link_to_add_role_group_right(form, person)
    new_object = RoleGroupRight.new()
    fields = form.fields_for(:role_group_rights, new_object, 
      :child_index => 'new_role_group_right') do |builder|
      render('roles/add_role_group_right', fn: builder)
    end
    link_to(?#, class: 'btn btn-outline-primary', 
        id: 'add_role_group_right_link', data: {content: "#{fields}"}) do 
      " Добавить группу прав" 
    end
  end
  
  def link_to_remove_role_group_right(form)  
    form.hidden_field(:_destroy, class: 'remove_fields') + 
        link_to(?#, class: 'remove_fields remove_role_group_right btn btn-danger') do 
          icon('fas', 'times')     
    end
  end
end
