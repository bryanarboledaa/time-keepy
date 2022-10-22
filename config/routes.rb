Rails.application.routes.draw do
  devise_for :users, controllers: {
    sessions: 'users/sessions'
  }
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "static_pages#index"
  get 'static/home' => 'static_pages#index'
  get 'user/home' => 'user_pages#index'
  post 'user/time_in' => 'user_pages#time_in'
  post 'user/time_out' => 'user_pages#time_out'
  get 'time_records/home' => 'time_records#index'
  get 'time_records/form' => 'time_records#new'
  post 'time_records/form' => 'time_records#create'
  get 'user/members' => 'user_pages#members'
  get 'user/requests' => 'user_pages#requests'
  put 'user/approve_request' => 'user_pages#approve_request'
  put 'user/reject_request' => 'user_pages#reject_request'
  get 'user/add_member' => 'user_pages#add_member'
  post 'user/add_member' => 'user_pages#create_member'

end
