Rails.application.routes.draw do
  get 'task/index'
  post 'task/create'
  get 'task/new/:status', to: 'task#new', as: :task_new
  get 'task/edit/:id', to: 'task#edit', as: :task_edit
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get 'up' => 'rails/health#show', as: :rails_health_check

  # Defines the root path route ("/")
  # root "posts#index"
end
