Rails.application.routes.draw do

  resources :genres
  resource :session
  get 'signup' => 'users#new'
  resources :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root "movies#index"
  resources :movies do
    resources :reviews
    resources :favorites
  end
end
