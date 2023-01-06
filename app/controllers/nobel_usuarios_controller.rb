class NobelUsuariosController < ApplicationController
  before_action :set_nobel_usuario, only: %i[ show edit update destroy ]

  # GET /nobel_usuarios or /nobel_usuarios.json
  def index
    @nobel_usuarios = NobelUsuario.all
  end

  # GET /nobel_usuarios/1 or /nobel_usuarios/1.json
  def show
  end

  # GET /nobel_usuarios/new
  def new
    @nobel_usuario = NobelUsuario.new
  end

  # GET /nobel_usuarios/1/edit
  def edit
  end

  # POST /nobel_usuarios or /nobel_usuarios.json
  def create
    @nobel_usuario = NobelUsuario.new(nobel_usuario_params)

    respond_to do |format|
      if @nobel_usuario.save
        format.html { redirect_to nobel_usuario_url(@nobel_usuario), notice: "Nobel usuario was successfully created." }
        format.json { render :show, status: :created, location: @nobel_usuario }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @nobel_usuario.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /nobel_usuarios/1 or /nobel_usuarios/1.json
  def update
    respond_to do |format|
      if @nobel_usuario.update(nobel_usuario_params)
        format.html { redirect_to nobel_usuario_url(@nobel_usuario), notice: "Nobel usuario was successfully updated." }
        format.json { render :show, status: :ok, location: @nobel_usuario }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @nobel_usuario.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /nobel_usuarios/1 or /nobel_usuarios/1.json
  def destroy
    @nobel_usuario.destroy

    respond_to do |format|
      format.html { redirect_to nobel_usuarios_url, notice: "Nobel usuario was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_nobel_usuario
      @nobel_usuario = NobelUsuario.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def nobel_usuario_params
      params.require(:nobel_usuario).permit(:nombre, :apellido_paterno, :apellido_materno, :fecha_de_nacimiento, :telefono, :estado_civil, :sexo, :escolaridad, :estado, :municipio, :domicilio, :numero_exterior, :numero_interior, :codigo_postal, :correo, :confirmar_correo, :contraseña, :confirmar_contraseña)
    end
end
