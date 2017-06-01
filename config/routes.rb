Rails.application.routes.draw do
  mount_devise_token_auth_for 'User', at: 'auth'
  root :to => "activities#index"

  get '/foods/search', to: 'foods#location_search'
  get '/activities/meetups', to: 'activities#get_meetups'
  resources :activities
  resources :foods


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
