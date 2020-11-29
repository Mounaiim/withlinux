Rails.application.routes.draw do

  root to: 'pages#home'
  get 'about', to: 'pages#about'
  get 'products', to: 'pages#products'
  resources :contacts
  # we could've used the regular get 'contacts', to:'contacts#new' but we used a shortcut hashtag best practice :D 

end
