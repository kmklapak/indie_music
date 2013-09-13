IndieMusic::Application.routes.draw do
  devise_for :users, :controllers => { :registrations => :registrations }


  root  'static_pages#signup'
  match '/profile/:id', to:'users#profile',   		via: 'get' , :as => 'profile'
  match '/signup',  to: 'users#new',   		 	via: 'get'
  match '/home',  	to:'static_pages#home',   		via: 'get'
  match '/help',    to: 'static_pages#help',    via: 'get'
  match '/about',   to: 'static_pages#about',   via: 'get'
  match '/contact', to: 'static_pages#contact', via: 'get'

end
