Rails.application.routes.draw do
  resources :users, param: :id
  resources :categories, param: :id
  resources :fines, param: :id
  resources :leagues, param: :id
  resources :sprints, param: :id
  resources :points, param: :id
  post '/auth/login', to: 'authentication#login'
  get '/*a', to: 'application#not_found'
end