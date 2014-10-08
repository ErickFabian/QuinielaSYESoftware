class QuinielasController < ApplicationController
  before_action :set_quiniela, only: [:show, :edit, :update, :destroy]

  def index
    @quinielas = Quiniela.all
  end

  def show
  end

  private

    def set_quiniela
      @quiniela = Quiniela.find(params[:id])
    end

end