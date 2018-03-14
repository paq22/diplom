Rails.application.routes.draw do
  get 'moderator/load_term_data_from_json', as: :term_data

  post 'moderator/load_term_data_from_json_commit', as: :term_data_commit

  devise_for :admins
  resources :permition_roles
  resources :right_group_permitions
  resources :role_group_rights
  resources :permitions
  resources :group_rights
  resources :role_users
  resources :dictionary_accesses do
    collection do
      get :get_table
    end
  end
  resources :information_systems
  resources :roles
  resources :users
  resources :branch_trees
  get 'welcome/index'
  root 'welcome#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
