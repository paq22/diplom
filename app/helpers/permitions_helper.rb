module PermitionsHelper
  def link_to_add_permition(form, person)
    new_object = Permition.new()
    fields = form.fields_for(:permitions, new_object, 
      :child_index => 'new_permition') do |builder|
      render('information_systems/add_permition', fn: builder)
    end
    link_to(?#, class: 'btn mbottom20 btn-info', 
        id: 'add_permition_link', data: {content: "#{fields}"}) do 
      #fa_icon("plus") + " Новый комментарий"
      " Новое право на конткретное действие" 
    end
  end
  
  def link_to_remove_permition(form)  
    form.hidden_field(:_destroy, class: 'remove_fields') + 
        link_to(?#, class: 'remove_fields remove_permition') do 
      ' Удалить'
      #fa_icon('times', title: 'Удалить комментарий') + ' Удалить'      
    end
  end
end
