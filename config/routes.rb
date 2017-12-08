Rails.application.routes.draw do
  devise_for :admins
  resources :permition_roles
  resources :right_group_permitions
  resources :role_group_rights
  resources :permitions
  resources :group_rights
  resources :role_users
  resources :dictionary_accesses
  resources :information_systems
  resources :roles
  resources :users
  get 'welcome/index'
  root 'welcome#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
