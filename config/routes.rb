Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root 'tasks#index'

  get '/', to: 'tasks#index', as: :tasks
  post '/', to: 'tasks#create'

  get '/:id', to: 'tasks#show', as: :task
  put '/:id', to: 'tasks#update'
  patch '/:id', to: 'tasks#update'
  delete '/:id', to: 'tasks#destroy'

  patch '/toggle/:id', to: 'tasks#toggle', as: :toggle

  get '/new', to: 'tasks#new', as: :task_new

  get '/:id/edit', to: 'tasks#edit', as: :task_edit
end
