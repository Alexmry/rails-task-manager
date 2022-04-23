Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

#Create and POST the form
  #CreateTheTaskGetTheForm
  get "tasks/new", to: "tasks#new"
  #CreateTheTaskPostTheForm
  post "tasks", to: "tasks#create"

#READ
  #ReadAll
  get '/tasks', to: 'tasks#index'
  #ReadOne
  get 'tasks/:id', to: 'tasks#show', as: :task

#EDIT then UPDATE
  #EditTheTaskGetTheForm
  get "tasks/:id/edit", to: "tasks#edit", as: :edit_task
  #UpdateTheTaskPostTheForm
  patch "tasks/:id", to: "tasks#update"

#DELETE
  delete "tasks/:id", to: "tasks#destroy"

  # resources :tasks
end
