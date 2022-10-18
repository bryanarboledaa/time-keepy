Rails.application.routes.draw do
  devise_for :users, controllers: {
    sessions: 'users/sessions'
  }
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "static_pages#index"
  get 'static/home' => 'static_pages#index'
  get 'user/home' => 'user_pages#index'
  get 'user/form' => 'user_pages#new'
  post 'user/form' => 'user_pages#create'
  post 'user/time_in' => 'user_pages#time_in'
  post 'user/time_out' => 'user_pages#time_out'

end
