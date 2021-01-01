Rails.application.routes.draw do

  root to: 'pages#home'
  get 'about', to: 'pages#about'
  get 'products', to: 'pages#products'
  # using will allow you to see all the objects when you run rails routes in the CLI each contact will be individual object
  #this line of code is important if you visit rails formaaatting you will that it generate 7 different routes 
  resources :contacts, only: :create
  #custom URLs
  get 'contact-us', to:'contacts#new', as: 'new_contact'
  # get 'new', to: 'contacts#new'
end


















  # resources :contacts   # then use /contacts/new in the url  
  # we choose new because in controllers, concerns, contact_controllers the method is called new
# use rails route to display all the available routes
  

