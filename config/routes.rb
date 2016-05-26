Rails.application.routes.draw do

  root :to => 'core_pages#home'

  get 'core_pages#about',   :to => 'core_pages#about',   :as => 'about'
  get 'core_pages#contact', :to => 'core_pages#contact', :as => 'contact'
end
