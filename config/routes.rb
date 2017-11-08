Rails.application.routes.draw do
  resources :payment_methods
  resources :envoices
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
