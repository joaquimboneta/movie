class ComentariosController < ApplicationController

	 def index
      @comentarios = Comentario.all
   end
   
   def show
       @comentario = Comentario.find(params[:id])
   end
   
   def new
       @comentario = Comentario.new
   end
   
   def create
       @comentario = Comentario.new(com_params)

      if @comentario.save
         redirect_to comentarios_path, notice => "Se ha guardado la comentario"
      else
         render "new"
   end
   end
   

private
   def com_params
      params.require(:comentario).permit(:name, :stars, :main_actor, :year)
   end

end

