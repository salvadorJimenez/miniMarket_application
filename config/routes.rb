Rails.application.routes.draw do
  get '/about_me', to: "mini_market#about_me"

  root "mini_market#home"

  resources :brands 
  resources :products
end
