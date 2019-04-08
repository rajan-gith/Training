Rails.application.routes.draw do
  get 'users/index'
  get 'users/show'
  post 'users/create'
  patch 'users/update'
  delete 'users/delete'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
