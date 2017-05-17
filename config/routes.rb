Rails.application.routes.draw do
 

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
