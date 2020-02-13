Rails.application.routes.draw do
  devise_for :users
  get 'todos/index', as: 'todos_index'
  get 'tasks/index'
  get 'todos/:id', to: 'todos#show', as: 'todos_show'
  patch 'todos/:id', to: 'todos#update', as: 'todos_update'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root "tasks#index"

end
