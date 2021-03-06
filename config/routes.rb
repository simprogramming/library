Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  scope "(:locale)", locale: /fr|en/ do
    root to: "pages#home"
  end

  resource :cash_flows, only: [ :create ]
end
