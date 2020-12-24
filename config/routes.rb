Rails.application.routes.draw do

  root to: 'pages#home'
  get 'about', to: 'pages#about'
  get 'products', to: 'pages#products'
  # get 'new', to: 'contacts#new'
  resources :contacts # using will allow you to see all the objects when you run rails routes in the CLI each contact will be individual object
end


















  # resources :contacts   # then use /contacts/new in the url  
  # we choose new because in controllers, concerns, contact_controllers the method is called new

  

