Rails.application.routes.draw do
  get 'statics/index'

  get 'statics/about'

  devise_for :users
	resources :comentarios
	resources :peliculas 

  get 'comentarios/index'

  get 'peliculas/index'


root :to => "statics#index"

get 'statics/index'

get 'statics/about'
get '/about' => 'statics#about', :as => :about
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
