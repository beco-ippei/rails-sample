Rails.application.routes.draw do
  root to: redirect('/items')
  resources :items
  get 'pages', to: 'pages#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
