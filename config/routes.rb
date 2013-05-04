GrooviewLanding::Application.routes.draw do
  root to: 'mails#index'
  resources :mails, only: [:index, :new, :create]
end
