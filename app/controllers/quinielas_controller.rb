class QuinielasController < ApplicationController
  before_action :set_quiniela, only: [:show, :edit, :update, :destroy]

  def index
    @quinielas = Quiniela.all
  end

  def show
  end

  def edit
  end

  def update
    if @quiniela.update(quiniela_params)
      redirect_to [:admin, @quiniela], notice: 'Quiniela was successfully updated.'
    else
      render :edit
    end
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
       users_id: [],
       games_attributes: [:id, :local, :visitor])
    end

end