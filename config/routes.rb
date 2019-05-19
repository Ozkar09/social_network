Rails.application.routes.draw do
  resources :posts
  devise_for :users

  # post "/sign_up_validation", to: "main_controller#sign_up_validation"

  authenticated :user do
    root "main#index"
  end

  unauthenticated :user do
     devise_scope :user do
       root to: "devise/sessions#new"
     end
  end

end
