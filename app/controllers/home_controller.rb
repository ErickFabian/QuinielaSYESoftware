class HomeController < ApplicationController
  def show
    @quiniela = Quiniela.first
    @users = User.all
  end 

end