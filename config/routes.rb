Rails.application.routes.draw do
  root 'restaurants#index'
  resources :restaurants, only: %i[new show index create] do
    resources :reviews, only: %i[new create]
  end
end
