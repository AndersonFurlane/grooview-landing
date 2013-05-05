GrooviewLanding::Application.routes.draw do
  root to: 'pages#index'
  resources :pages, only: [:index, :new, :create]
end
