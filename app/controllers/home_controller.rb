class HomeController < ApplicationController
  
  def show
    @current  = Quiniela.all.select { |e| Date.today <= e.start_at }
    @past_quinielas = Quiniela.all.select { |e| Date.today > e.end_at }
    @user_quinielas = Quiniela.all.select { |e| e.suscribed?(current_user) }
  end 
end