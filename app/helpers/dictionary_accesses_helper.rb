module DictionaryAccessesHelper
  def link_to_add_dictionary_access(form, person)
    new_object = DictionaryAccess.new()
    fields = form.fields_for(:dictionary_accesses, new_object, 
      :child_index => 'new_dictionary_access') do |builder|
      render('information_systems/add_dictionary_access', fn: builder)
    end
    link_to(?#, class: 'btn btn-outline-primary', 
        id: 'add_dictionary_access_link', data: {content: "#{fields}"}) do 
      " Добавить доступ к словарю" 
    end
  end
  
  def link_to_remove_dictionary_access(form)  
    form.hidden_field(:_destroy, class: 'remove_fields') + 
        link_to(?#, class: 'remove_fields remove_dictionary_access btn btn-danger') do 
          icon('fas', 'times')     
    end
  end
end
