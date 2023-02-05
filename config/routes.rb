Rails.application.routes.draw do
  devise_for :users, controllers: {
    sessions: 'users/sessions',
    registrations: 'users/registrations'
  }

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "static_pages#index"
  get 'static/home' => 'static_pages#index'
  get 'static/get_time' => 'static_pages#get_time'
  get 'user/home' => 'user_pages#index'
  get 'user/form' => 'user_pages#new'
  post 'user/form' => 'user_pages#create'
  post 'user/time_in' => 'user_pages#time_in'
  post 'user/time_out' => 'user_pages#time_out'
  get 'admin/requests' => 'user_pages#requests'
  get 'admin/members' => 'user_pages#members'
  get 'admin/export' => 'export_data#export_time_logs'
  put 'admin/approve_request' => 'user_pages#approve_time_log'
  put 'admin/reject_request' => 'user_pages#reject_time_log'
  get 'admin_time_logs' => 'user_pages#time_logs'

end
