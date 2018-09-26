Rails.application.routes.draw do
  resources :favorites
  resource :session
  get 'signup' => 'users#new'
  resources :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root "movies#index"
  resources :movies do
    resources :reviews
  end
end
