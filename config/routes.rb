Rails.application.routes.draw do
	resources :comentarios
	resources :peliculas
  get 'comentarios/index'

  get 'peliculas/index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
