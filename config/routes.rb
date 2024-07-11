Rails.application.routes.draw do
  devise_for :users

  resources :projects,  only: [:index, :new, :create]

end
