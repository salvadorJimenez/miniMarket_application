Rails.application.routes.draw do
  root "mini_market#home"

  resources :brands 
  resources :products
end
