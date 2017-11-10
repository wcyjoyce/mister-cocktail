Rails.application.routes.draw do
  resources :cocktails do
    resources :doses, only: [:new, :create, :edit, :update]
  end
  resources :doses, only: [:destroy]

  root to: "cocktails#index"
end
