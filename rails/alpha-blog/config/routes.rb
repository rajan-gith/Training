Rails.application.routes.draw do
  get 'student/index'
  get 'student/edit'
  get 'student/new'
  get 'student/delete'
  get 'student/show'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'welcome#index'
  get 'about', to: 'welcome#about'
end
