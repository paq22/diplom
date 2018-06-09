module PermitionRolesHelper
  def link_to_add_permition_role(form, person)
    new_object = PermitionRole.new()
    fields = form.fields_for(:permition_roles, new_object, 
      :child_index => 'new_permition_role') do |builder|
      render('roles/add_permition_role', fn: builder)
    end
    link_to(?#, class: 'btn btn-outline-success', 
        id: 'add_permition_role_link', data: {content: "#{fields}"}) do 
      " Добавить право" 
    end
  end
  
  def link_to_remove_permition_role(form)  
    form.hidden_field(:_destroy, class: 'remove_fields') + 
        link_to(?#, class: 'remove_fields remove_permition_role btn btn-danger') do 
          icon('fas', 'times')     
    end
  end
end
