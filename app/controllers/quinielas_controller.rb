class QuinielasController < ApplicationController

  before_action :set_quiniela, only: [:show, :edit, :update, :destroy, :suscribe, :unsuscribe]
  
  def index
    @quinielas = Quiniela.all
  end

  def show
  end

  def suscribe
    if @quiniela
      @quiniela.users << current_user if @quiniela.unsuscribed? current_user
    end
    redirect_to quinielas_path
  end

  def unsuscribe
    @quiniela.users.delete(current_user)
    redirect_to quinielas_path
  end

  private

    def set_quiniela
      @quiniela = Quiniela.find(params[:id])
    end

    def quiniela_params
      params.require(:quiniela).permit(:name,
       :start_at,
       :end_at,
       :cost,
       user_ids: [],
       games_attributes: [:id, :local_id, :visitor_id])
    end

end