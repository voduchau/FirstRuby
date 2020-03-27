Rails.application.routes.draw do
  root 'article#index'
  resources :article do
    resources :comment
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
