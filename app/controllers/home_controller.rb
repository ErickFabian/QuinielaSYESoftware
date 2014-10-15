class HomeController < ApplicationController
  
  def show

    @user_active_quinielas = current_user.quinielas.active
    @user_inactive_quinielas = current_user.quinielas.inactive
    @active_quinielas  = Quiniela.active
  end 
end