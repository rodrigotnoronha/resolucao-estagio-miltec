class ColaboratorsController < ApplicationController
  before_action :set_colaborator, only: [:show, :edit, :update, :destroy]

  # GET /colaborators
  # GET /colaborators.json
  def index
    @colaborators = Colaborator.all
    respond_with @colaborators
  end

  # GET /colaborators/1
  # GET /colaborators/1.json
  def show
    respond_with @colaborator
  end

  # GET /colaborators/new
  def new
    @colaborator = Colaborator.new
    respond_with @colaborator
  end

  # GET /colaborators/1/edit
  def edit
  end

  # POST /colaborators
  # POST /colaborators.json
  def create
    @colaborator = Colaborator.create(colaborator_params)
    respond_with @colaborator
  end

  # PATCH/PUT /colaborators/1
  # PATCH/PUT /colaborators/1.json
  def update
      if @colaborator.update(colaborator_params)
        respond_with @colaborator
      else
        respond_with @colaborator.erros
      end
  end

  # DELETE /colaborators/1
  # DELETE /colaborators/1.json
  def destroy
    respond_with @colaborator.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_colaborator
      @colaborator = Colaborator.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def colaborator_params
      params.require(:colaborator).permit(:name, :age, :salary)
    end
end
