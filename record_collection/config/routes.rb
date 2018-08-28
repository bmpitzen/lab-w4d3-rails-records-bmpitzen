Rails.application.routes.draw do

  get 'collection/index'

  resources :albums

  root 'collection#index'

end
