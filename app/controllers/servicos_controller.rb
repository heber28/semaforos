class ServicosController < ApplicationController
  before_action :set_servico, only: [:show, :edit, :update, :destroy]

  # GET /servicos
  # GET /servicos.json
  def index
    @servicos = Servico.all
  end

  # GET /servicos/1
  # GET /servicos/1.json
  def show
  end

  # GET /servicos/new
  def new
    @servico = Servico.new
  end

  # GET /servicos/1/edit
  def edit
  end

  # POST /servicos
  # POST /servicos.json
  def create
    @servico = Servico.new(servico_params)

    respond_to do |format|
      if @servico.save
        format.html { redirect_to @servico, notice: 'Servico was successfully created.' }
        format.json { render :show, status: :created, location: @servico }
      else
        format.html { render :new }
        format.json { render json: @servico.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /servicos/1
  # PATCH/PUT /servicos/1.json
  def update
    respond_to do |format|
      if @servico.update(servico_params)
        format.html { redirect_to @servico, notice: 'Servico was successfully updated.' }
        format.json { render :show, status: :ok, location: @servico }
      else
        format.html { render :edit }
        format.json { render json: @servico.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /servicos/1
  # DELETE /servicos/1.json
  def destroy
    @servico.destroy
    respond_to do |format|
      format.html { redirect_to servicos_url, notice: 'Servico was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_servico
      @servico = Servico.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def servico_params
      params.require(:servico).permit(:data, :lampada_127x100_vermelho, :lampada_127x100_amarelo, :lampada_127x100_verde, :lampada_220x100_vermelho, :lampada_220x100_amarelo, :lampada_220x100_verde, :lente_vermelho, :lente_amarelo, :lente_verde, :servico_executado, :numero_os, :hora_inicial, :hora_final, :controlador_brascontrol, :controlador_mecanico, :controlador_tesc, :controlador_dataprom, :controlador_digicon, :porta_foco_t, :porta_foco_g, :porta_foco_pd, :ld, :le, :cruzamento, :sentido, :executores_do_servico, :supervisor)
    end
end
