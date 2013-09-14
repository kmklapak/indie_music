IndieMusic::Application.routes.draw do
  devise_for :users, :controllers => { :registrations => :registrations }

  namespace :api, :defaults => {:format => :xml}  do
    resources :users
  end

  root  'static_pages#signup'
  match '/artist/country',  	to:'static_pages#country',   	via: 'get' , :as => 'country'
  match '/artist/genre',  		to:'static_pages#genre',   		via: 'get' , :as => 'genre'
  match '/artist/popular',  	to:'static_pages#popular',   	via: 'get' , :as => 'popular'
  match '/:name/profile/:id',	to:'users#profile',   			  via: 'get' , :as => 'fan'
  match '/:name/:id',         to: 'users#profile',           via: 'get' , :as => 'artist'
  match '/signup',  		    	to: 'users#new',   		 		    via: 'get'
  match '/home',  			     	to: 'static_pages#home',   		via: 'get'
  match '/help',   				    to: 'static_pages#help',    	via: 'get'
  match '/about',   			    to: 'static_pages#about',   	via: 'get'
  match '/contact', 			    to: 'static_pages#contact', 	via: 'get'

end
