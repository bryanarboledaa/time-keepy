Rails.application.routes.draw do
  devise_for :users, controllers: {
    sessions: 'user/sessions'
  }
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "static_pages#index"

  #user
  resources :users

end
