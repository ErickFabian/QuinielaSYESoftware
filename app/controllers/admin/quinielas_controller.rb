class Admin::QuinielasController < Admin::BaseController
  before_action :set_quiniela, only: [:show, :edit, :update, :destroy]

  def index
    @quinielas = Quiniela.all
  end

  def show
  end

  def new
    @quiniela = Quiniela.new
  end

  def edit
  end

  def create
    @quiniela = Quiniela.new(quiniela_params)

    if @quiniela.save
      redirect_to [:admin, @quiniela], notice: 'Quiniela was successfully created.'
    else
      render :new
    end
  end

  def update
    if @quiniela.update(quiniela_params)
      redirect_to [:admin, @quiniela], notice: 'Quiniela was successfully updated.'
    else
      render :edit
    end
  end

  def destroy
    @quiniela.destroy
    redirect_to admin_quinielas_url, notice: 'Quiniela was successfully destroyed.'
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
       games_attributes: [:id, :local, :visitor])
    end
end