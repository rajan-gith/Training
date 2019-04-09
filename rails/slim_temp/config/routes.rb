Rails.application.routes.draw do
  get 'posts/edit'
  get 'posts/new'
  get 'posts/update'
  post 'posts/create'
  root 'welcome#index'
  delete 'posts/delete', to: "posts#delete", as: 'posts_delete'
  # get 'welcome/about'
  # get 'welcome/contact_us'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
