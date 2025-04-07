Rails.application.routes.draw do
  root to: "main#index"

  get "up" => "rails/health#show", as: :rails_health_check
end
