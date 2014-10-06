class HomeController < ApplicationController
  def show
    @quiniela = Predictor.first
  end 
end