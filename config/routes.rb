Rails.application.routes.draw do
  get 'task/new/:status', to: 'tasks#small_new', as: :task_new
  get 'task/:id/move_up', to: 'tasks#move_up', as: :move_up_task
  get 'task/:id/move_down', to: 'tasks#move_down', as: :move_down_task
  post 'task/:id/move_to_column', to: 'tasks#move_to_column', as: :move_to_column_task
  post 'task/small', to: 'tasks#create_small', as: :task_create_small
  put 'task/:id/move_column_and_position', to: 'tasks#move_column_and_position', as: :move_column_and_position_task
  resources :tasks
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get 'up' => 'rails/health#show', as: :rails_health_check

  # Defines the root path route ("/")
  # root "posts#index"
end
