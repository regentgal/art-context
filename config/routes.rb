Rails.application.routes.draw do
  resources :pieces, only: [:show]
end
