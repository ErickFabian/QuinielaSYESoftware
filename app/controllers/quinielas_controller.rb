class QuinielasController < ApplicationController
  helper_method :suscribed?
  
  before_action :set_quiniela, only: [:show, :edit, :update, :destroy]
  before_action :set_suscriber, only: [:suscribe, :unsuscribe]
  def index
    @quinielas = Quiniela.all
  end

  def show
  end

  def suscribe
    if @quiniela
      @quiniela.users << current_user unless suscribed? @quiniela
    end
    redirect_to quinielas_path
  end

  def unsuscribe
    @quiniela.users.delete(current_user)
    redirect_to quinielas_path
  end

  def suscribed? quiniela
    true if quiniela.users.include?(current_user)
  end

  private

    def set_suscriber
      @quiniela = Quiniela.find(params[:quiniela_id])
    end

    def set_quiniela
      @quiniela = Quiniela.find(params[:id])
    end

    def quiniela_params
      params.require(:quiniela).permit(:name,
       :start_at,
       :end_at,
       :cost,
       user_ids: [],
       games_attributes: [:id, :local, :visitor])
    end

end