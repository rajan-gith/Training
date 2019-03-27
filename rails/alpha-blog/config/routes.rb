Rails.application.routes.draw do

  get 'event/index'
  get 'event/show'
  get 'event/delete'
  get 'event/edit'
  get 'event/update'
  get 'event/new'
  post 'event/create'


  get 'posts/index'
  get 'posts/show'
  get 'posts/new'
  get 'posts/edit'
  post 'posts/create'
  delete 'posts/delete'
  patch 'posts/update'
  #########################################################################
  get 'addresses/create'
  get 'addresses/delete'
  get 'addresses/new/:id', to: 'addresses#new', as: 'new_address'
  post 'addresses/create', to: 'addresses#create', as: 'create_address'
  patch 'address/:id', to: 'addresses#update', as: 'update_address'
  get 'addresses/edit/:id', to: 'addresses#edit', as: 'edit_addresses'
  get 'addresses/delete/id', to: 'addresses#delete', as: 'delete_addresses'
  #########################################################################
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'welcome#index'
  get 'about', to: 'welcome#about'
  get 'user', to: 'user#user_list'
  get 'user/new', to: 'user#new', as: 'new_user'
  get 'user/:id', to: 'user#show', as: 'show_user'
  get 'user/delete/:id', to: 'user#delete', as: 'delete_user'
  post 'user/create/', to: 'user#create', as: 'create_user'
  get 'user/edit/:id', to: 'user#edit', as: 'edit_user'
  patch 'user/:id', to: 'user#update', as: 'update_user'
  #########################################################################
end
