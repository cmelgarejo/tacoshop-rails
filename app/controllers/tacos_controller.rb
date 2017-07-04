class TacosController < APIController
  before_action :set_taco, only: [:show, :update, :destroy]

  # GET /tacos
  # GET /tacos.json
  def index
    @tacos = Taco.all
  end

  # GET /tacos/1
  # GET /tacos/1.json
  def show
  end

  # POST /tacos
  # POST /tacos.json
  def create
    @taco = Taco.new(taco_params)

    if @taco.save
      render :show, status: :created, location: @taco
    else
      render json: @taco.errors, status: :unprocessable_entity
    end
  end

  # DELETE /tacos/1
  # DELETE /tacos/1.json
  def destroy
    @taco.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_taco
      @taco = Taco.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def taco_params
      params.require(:taco).permit(:meat, :rice, :salsa, :fries, :notes)
    end
end
