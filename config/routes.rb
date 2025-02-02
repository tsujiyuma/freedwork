Rails.application.routes.draw do
  devise_for :users

  root to: "projects#index"
  resources :projects,  only: [:index, :new, :create, :show] do
    resources :tasks, only: [:new, :create, :show] do
      resources :comments, only: [:new, :create]
    end
  end

end
