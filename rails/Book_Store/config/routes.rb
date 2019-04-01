Rails.application.routes.draw do
  root 'book#index'
  get 'book/view'
  get 'book/new'
  get 'book/create'
  get 'book/update'
  get 'book/delete'
  get 'book/edit'
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
