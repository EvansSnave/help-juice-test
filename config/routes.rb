Rails.application.routes.draw do
  root to: "main#index"

  get "/articles", to: "main#articles"
end
