class EquipoAprendizsController < ApplicationController
  before_action :set_equipo_aprendiz, only: [:show, :edit, :update, :destroy]

  # GET /equipo_aprendizs
  # GET /equipo_aprendizs.json
  def index
    @equipo_aprendizs = EquipoAprendiz.all
  end

  # GET /equipo_aprendizs/1
  # GET /equipo_aprendizs/1.json
  def show
  end

  # GET /equipo_aprendizs/new
  def new
    @equipo_aprendiz = EquipoAprendiz.new
  end

  # GET /equipo_aprendizs/1/edit
  def edit
  end

  # POST /equipo_aprendizs
  # POST /equipo_aprendizs.json
  def create
    @equipo_aprendiz = EquipoAprendiz.new(equipo_aprendiz_params)

    respond_to do |format|
      if @equipo_aprendiz.save
        format.html { redirect_to @equipo_aprendiz, notice: 'Equipo aprendiz was successfully created.' }
        format.json { render :show, status: :created, location: @equipo_aprendiz }
      else
        format.html { render :new }
        format.json { render json: @equipo_aprendiz.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /equipo_aprendizs/1
  # PATCH/PUT /equipo_aprendizs/1.json
  def update
    respond_to do |format|
      if @equipo_aprendiz.update(equipo_aprendiz_params)
        format.html { redirect_to @equipo_aprendiz, notice: 'Equipo aprendiz was successfully updated.' }
        format.json { render :show, status: :ok, location: @equipo_aprendiz }
      else
        format.html { render :edit }
        format.json { render json: @equipo_aprendiz.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /equipo_aprendizs/1
  # DELETE /equipo_aprendizs/1.json
  def destroy
    @equipo_aprendiz.destroy
    respond_to do |format|
      format.html { redirect_to equipo_aprendizs_url, notice: 'Equipo aprendiz was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_equipo_aprendiz
      @equipo_aprendiz = EquipoAprendiz.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def equipo_aprendiz_params
      params.require(:equipo_aprendiz).permit(:equipo_id, :aprendiz_id)
    end
end
