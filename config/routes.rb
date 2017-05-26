Rails.application.routes.draw do
  devise_for :users
  get 'statics/index'

  get 'statics/about'

	resources :comentarios
	resources :peliculas
  get 'comentarios/index'

  get 'peliculas/index'

  
get '/about' => 'static#about', :as => :about
root :to => "statics#index"

devise_for :users


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
