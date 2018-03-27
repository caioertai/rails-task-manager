Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  # Create
  get '/new', to: 'tasks#new'
  post '/', to: 'tasks#create'

  # Read
  get '/', to: 'tasks#index'
  get '/:id', to: 'tasks#show'

  # Update
  get '/:id/edit', to: 'tasks#edit'
  patch '/:id', to: 'tasks#update'
  put '/:id', to: 'tasks#update'

  # Destroy
  delete '/:id', to: 'tasks#destroy'
end
