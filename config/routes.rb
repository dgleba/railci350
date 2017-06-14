Rails.application.routes.draw do
 

  resources :leaders
  resources :lkup_sugg_statuses
  resources :ci_reviews
  resources :cilisting1s
  
  mount RailsAdmin::Engine => '/radmin', as: 'rails_admin'

  # devise_for :users

  resources :roles
  devise_for :users, controllers: { sessions: 'users/sessions' }

  devise_scope :user do
    match 'active'            => 'users/sessions#active',               via: :get  
    match 'timeout'           => 'users/sessions#timeout',              via: :get   
  end  
  
  root "home#index"

  # get 'home/index'

  # get 'home/about'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
