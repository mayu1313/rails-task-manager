Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  get 'tasks', to: 'tasks#list'

  # Create
  get 'tasks/new', to: 'tasks#new'
  post "tasks", to: "tasks#create"
  # Update
  get    "tasks/:id/edit", to: "tasks#edit", as: :edit_task
  patch "tasks/:id", to: "tasks#update"
  # Read
  get 'tasks/:id', to: 'tasks#show', as: :task
  # Delete
  delete "tasks/:id", to: "tasks#destroy"


end
