Rails.application.routes.draw do
  root 'book#index'
  get 'book/view'
  get 'book/new'
  post 'book/create'
  patch 'book/update'
  delete 'book/delete'
  get 'book/edit'
  get 'book/current'
  # devise_for :users
  devise_for :users, controllers: { omniauth_callbacks: 'users/omniauth_callbacks' }
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
