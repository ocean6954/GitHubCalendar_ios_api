Rails.application.routes.draw do
  namespace :api do
    resources :contributions, only: %i[index create]
  end
end
