class AprendizsController < ApplicationController
  before_action :set_aprendiz, only: [:show, :edit, :update, :destroy]

  # GET /aprendizs
  # GET /aprendizs.json
  def index
    @aprendizs = Aprendiz.all
  end

  # GET /aprendizs/1
  # GET /aprendizs/1.json
  def show
  end

  # GET /aprendizs/new
  def new
    @aprendiz = Aprendiz.new
  end

  # GET /aprendizs/1/edit
  def edit
  end

  # POST /aprendizs
  # POST /aprendizs.json
  def create
    @aprendiz = Aprendiz.new(aprendiz_params)

    respond_to do |format|
      if @aprendiz.save
        format.html { redirect_to @aprendiz, notice: 'Aprendiz was successfully created.' }
        format.json { render :show, status: :created, location: @aprendiz }
      else
        format.html { render :new }
        format.json { render json: @aprendiz.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /aprendizs/1
  # PATCH/PUT /aprendizs/1.json
  def update
    respond_to do |format|
      if @aprendiz.update(aprendiz_params)
        format.html { redirect_to @aprendiz, notice: 'Aprendiz was successfully updated.' }
        format.json { render :show, status: :ok, location: @aprendiz }
      else
        format.html { render :edit }
        format.json { render json: @aprendiz.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /aprendizs/1
  # DELETE /aprendizs/1.json
  def destroy
    @aprendiz.destroy
    respond_to do |format|
      format.html { redirect_to aprendizs_url, notice: 'Aprendiz was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_aprendiz
      @aprendiz = Aprendiz.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def aprendiz_params
      params.require(:aprendiz).permit(:nombres, :apellido, :genero, :identificacion, :email, :ficha_id)
    end
end
