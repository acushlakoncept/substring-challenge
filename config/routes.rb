Rails.application.routes.draw do
  resources :submissions, only: [:index, :create]
  root 'submissions#index'

  get '/:word', to: 'submissions#challenge', as: 'challenge'
end
