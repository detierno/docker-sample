Rails.application.routes.draw do
  resources :watches

  root 'watches#index'
end
