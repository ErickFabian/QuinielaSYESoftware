class HomeController < ApplicationController
  
  def show
    @quiniela = Quiniela.first
  end 

end