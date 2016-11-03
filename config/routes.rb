Rails.application.routes.draw do
  resources :line_items
  resources :carts
  get 'store/index'
root to: 'store#index', as: 'store'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

get '/customers', to: 'customers#index'
get '/customers/new', to: 'customers#new'
post '/customers', to: 'customers#create'
get '/customers/:id', to: 'customers#show'
get '/customers/:id/edit', to: 'customers#edit'
patch '/customers/:id', to: 'customers#update'


get '/items', to: 'items#index'
get '/items/new', to: 'items#new'
post '/items', to: 'items#create'
get '/items/:id/edit', to: 'items#edit'
patch '/items/:id', to: 'items#update'


get '/bills' , to: 'bills#index'
get '/bills/new', to: 'bills#new'
post '/bills', to: 'bills#create'
get '/bills/:id/edit', to: 'bills#edit'
patch '/bills/:id', to: 'bills#update'


get '/invoices' , to: 'invoices#index'
get '/invoices/new', to: 'invoices#new'
post '/invoices', to: 'invoices#create'
get '/invoices/:id/edit', to: 'invoices#edit'
patch '/invoices/:id', to: 'invoices#update'

get '/orders', to: 'orders#index'
get '/orders/new', to: 'orders#new'
post '/orders', to: 'orders#create'

get '/paymodes', to: 'paymodes#index'
get '/paymodes/new', to: 'paymodes#new'
post '/paymodes', to: 'paymodes#create'
end
