Rails.application.routes.draw do
  devise_for :users
  resources :paniers, only:[:new, :create, :show, :index]
  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
