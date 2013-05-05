GrooviewLanding::Application.routes.draw do
  root to: 'pages#index'
  resources :mails, only: [:index, :new, :create]
end
