Rails.application.routes.draw do

  root to: 'pages#home'
  get 'about', to: 'pages#about'
  get 'products', to: 'pages#products'
  get 'new', to: 'contacts#new' # resources :contacts then use /contacts/new
  # we could've used the regular get 'contacts', to:'contacts#new' but we used a shortcut hashtag best practice :D 
  
end
