class ChoicesController < ApplicationController

  def create
    @choice = Choice.new(choice_params)

    if @choice.save
      redirect_to @choice, notice: 'Choice was successfully created.'
    else
      render :new
    end
  end

  private

    def set_choice
      @choice = Choice.find(params[:id])
    end

    def choice_params
      params.require(:quiniela).permit(:local, :draw, :visitor)
    end
end