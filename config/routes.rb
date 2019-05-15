Rails.application.routes.draw do
  devise_for :users

  authenticated :user do
    root "main#index"
  end

  unauthenticated :user do
    root "main#unauthenticated"
  end

end
