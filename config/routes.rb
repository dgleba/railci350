Rails.application.routes.draw do
 

  resources :leaders
  resources :lkup_sugg_statuses
  resources :ci_reviews
  resources :cilisting1s
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'

  # devise_for :users


  # mount RailsAdmin::Engine => '/radmin', as: 'rails_admin'
  resources :roles
  devise_for :users, controllers: { sessions: 'users/sessions' }
  
  root "home#index"


  # get 'home/index'

  # get 'home/about'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
