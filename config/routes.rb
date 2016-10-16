Rails.application.routes.draw do
  resources :scores, only: [:index, :create], defaults: { format: :json }
end
