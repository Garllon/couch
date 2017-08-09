Rails.application.routes.draw do
  root 'home#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  #
  resources :appointments, only: [:index, :new, :create, :edit, :update, :show] do
    resources :comments, only: [:new, :create]
  end
end
