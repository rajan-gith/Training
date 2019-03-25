Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'welcome#index'
  get 'about', to: 'welcome#about'
  get 'user', to: 'user#user_list'
  get 'user/:id', to: 'user#show', as: 'show_user'
  get 'user/delete/:id', to: 'user#delete', as: 'delete_user'
  get 'user/new', to: 'user#new', as: 'new_user'
end
