Rails.application.routes.draw do
  get 'foods/new'

  get 'foods/create'

  get 'foods/update'

  get 'foods/edit'

  get 'foods/destroy'

  get 'foods/show'

  get 'foods/index'

  mount_devise_token_auth_for 'User', at: 'auth'
  # get 'activities/new'
  #
  # get 'activities/create'
  #
  # get 'activities/update'
  #
  # get 'activities/edit'
  #
  # get 'activities/destroy'
  #
  # get 'activities/index'
  # 
  # get 'activities/show'


  resources :activities

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
