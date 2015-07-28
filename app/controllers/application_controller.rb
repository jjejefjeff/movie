class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  
  def show
    @mov = Movie.find_by_id(params['id'])
  end
  
  def edit
    @mov = Movie.find_by_id(params['id'])
  end
  
  def editing
    mov = Movie.find_by_id(params['id'])
  end
  
  def new
  end
  
  def making_movie
    mov = Movie.new
    mov.imdb = params['imdb']
    mov.img = params['img']
    mov.save
    redirect_to '/movie'
  end
  
  def movie
    @mov = Movie.all
  end
  
  def destroy
    mov = Movie.find_by_id(params['id'])
    mov.destroy
    redirect_to '/movie'
  end
end
