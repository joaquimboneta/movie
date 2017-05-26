class PeliculasController < ApplicationController
 
	 def index
      @peliculas = Pelicula.all
   end
   
   def show
       @pelicula = Pelicula.find(params[:id])
   end
   
   def new
       @pelicula = Pelicula.new
   end
   
   def create
       @pelicula = Pelicula.new(peli_params)

      if @pelicula.save
         redirect_to peliculas_path, notice => "Se ha guardado la pelicula"
      else
         render "new"
   end
   end
   

private
   def peli_params
      params.require(:pelicula).permit(:name, :stars, :main_actor, :year)
   end

end

