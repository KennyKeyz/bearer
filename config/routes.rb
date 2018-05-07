Rails.application.routes.draw do
  resources :items
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  

	
  devise_for :users, controllers: {
      sessions: 'users/sessions',
      passwords: 'users/passwords',
      registrations: 'users/registrations'
  }





  get 'about-us', to: 'static_pages#about'

  get 'contact-us', to: 'static_pages#contact'

  get 'help', to: 'static_pages#help'

  get 'item-search', to: 'items#searchengine'



  root to: 'static_pages#home'	

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
