module RoleUsersHelper
  def link_to_add_role_user(form, person)
    new_object = RoleUser.new()
    fields = form.fields_for(:role_users, new_object, 
      :child_index => 'new_role_user') do |builder|
      render('users/add_role_user', fn: builder)
    end
    link_to(?#, class: 'btn btn-outline-success', style: "width: 45%;",
        id: 'add_role_user_link', data: {content: "#{fields}"}) do 
      "Новая роль для пользователя" 
    end
  end
  
  def link_to_remove_role_user(form)  
    form.hidden_field(:_destroy, class: 'remove_fields') + 
        link_to(?#, class: 'remove_fields remove_role_user btn btn-danger') do 
          icon('fas', 'times')     
    end
  end
end
