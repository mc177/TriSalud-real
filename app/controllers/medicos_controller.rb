class MedicosController < ApplicationController
  before_action :set_medico, only: [:show, :edit, :update, :destroy]

  # GET /medicos
  # GET /medicos.json
  def index
    @medicos = Medico.where(["estatus = 'A' OR estatus = 'I'"])
  end

  # GET /medicos/1
  # GET /medicos/1.json
  def show
  end

  # GET /medicos/new
  def new
    @medico = Medico.new
  end

  # GET /medicos/1/edit
  def edit
  end

  # POST /medicos
  # POST /medicos.json
  def create
    @medico = Medico.new(medico_params)
    @medico.estatus = "A" 
    respond_to do |format|
      if @medico.save
        format.html { redirect_to @medico, notice: "El médico ha sido registrado con éxito"}
        format.json { render :show, status: :created, location: @medico }
      else
        format.html { render :new }
        format.json { render json: @medico.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /medicos/1
  # PATCH/PUT /medicos/1.json
  def update
    respond_to do |format|
      @medico = Medico.find(params[:id])
      if @medico.update(medico_params)
            format.html { redirect_to @medico, notice: "Los datos del médico #{@medico.nombres} han sido modificados con éxito"}
            format.json { render :show, status: :ok, location: @medico }
       else
            format.html { render :edit }
            format.json { render json: @medico.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /medicos/1
  # DELETE /medicos/1.json
  def destroy
  respond_to do |format|
    @medico = Medico.find(params[:id])
      if @medico.estatus == 'I'
            @medico.estatus = 'A'
            @medico.save
            format.html { redirect_to medicos_url, notice: "El médico #{@medico.nombres} ha sido reactivado con éxito"}
            format.json { head :no_content }
        else
          @medico.estatus = 'I'      
          @medico.save
            format.html { redirect_to medicos_url, notice: "El médico #{@medico.nombres} ha sido eliminado con éxito"}
            format.json { head :no_content }
      end
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_medico
      @medico = Medico.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def medico_params
      params.require(:medico).permit(:user_id, :especialidad_id, :nombres, :apellidos, :direccion, :telefono, :edad, :sexo, :estatus)
    end
end
