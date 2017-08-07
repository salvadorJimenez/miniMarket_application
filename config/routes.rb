Rails.application.routes.draw do

  get 'mini_market/home'

  get 'mini_market/about_me'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root "mini_market#home"

  resources :brands do
    resources :products
  end

  resources :products
end
