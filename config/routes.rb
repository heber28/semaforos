Rails.application.routes.draw do
  resources :servicos
  root to: 'servicos#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
