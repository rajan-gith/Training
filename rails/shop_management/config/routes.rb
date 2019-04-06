Rails.application.routes.draw do

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get 'products/search', to: 'products#search', as: 'search'
  resources :products
end
