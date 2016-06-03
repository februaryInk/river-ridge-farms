Rails.application.routes.draw do

  root :to => 'core_pages#home'

  get '/about',     :to => 'core_pages#about',     :as => 'about'
  get '/locations', :to => 'core_pages#locations', :as => 'locations'
  
  get '/contact', :to => 'messages#new', :as => 'new_message'
  post '/contact', :to => 'messages#create', :as => 'messages'
end
