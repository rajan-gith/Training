Rails.application.routes.draw do
  get 'addresses/edit/:id', to: 'addresses#edit', as: 'edit_addresses'
  get 'addresses/create'
  get 'addresses/delete'
  patch 'address/:id', to: 'addresses#update', as: 'update'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'welcome#index'
  get 'about', to: 'welcome#about'
  get 'user', to: 'user#user_list'
  get 'user/new', to: 'user#new', as: 'new_user'
  get 'user/:id', to: 'user#show', as: 'show_user'
  get 'user/delete/:id', to: 'user#delete', as: 'delete_user'
  post 'user/create/', to: 'user#create', as: 'create'
  get 'user/edit/:id', to: 'user#edit', as: 'edit_user'
  patch 'user/:id', to: 'user#update', as: 'update_user'

end
