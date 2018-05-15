Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get '/', to: 'tasks#index', as: :tasks

  get '/tasks/new', to: 'tasks#new', as: :new
  post '/', to: 'tasks#create'

  get '/tasks/:id', to: 'tasks#show', as: :task

  get '/tasks/:id/edit', to: 'tasks#edit', as: :edit
  patch 'tasks/:id', to: 'tasks#update'


end
