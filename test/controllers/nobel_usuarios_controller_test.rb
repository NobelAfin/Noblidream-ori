require "test_helper"

class NobelUsuariosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @nobel_usuario = nobel_usuarios(:one)
  end

  test "should get index" do
    get nobel_usuarios_url
    assert_response :success
  end

  test "should get new" do
    get new_nobel_usuario_url
    assert_response :success
  end

  test "should create nobel_usuario" do
    assert_difference("NobelUsuario.count") do
      post nobel_usuarios_url, params: { nobel_usuario: { apellido_materno: @nobel_usuario.apellido_materno, apellido_paterno: @nobel_usuario.apellido_paterno, codigo_postal: @nobel_usuario.codigo_postal, confirmar_contraseña: @nobel_usuario.confirmar_contraseña, confirmar_correo: @nobel_usuario.confirmar_correo, contraseña: @nobel_usuario.contraseña, correo: @nobel_usuario.correo, domicilio: @nobel_usuario.domicilio, escolaridad: @nobel_usuario.escolaridad, estado: @nobel_usuario.estado, estado_civil: @nobel_usuario.estado_civil, fecha_de_nacimiento: @nobel_usuario.fecha_de_nacimiento, municipio: @nobel_usuario.municipio, nombre: @nobel_usuario.nombre, numero_exterior: @nobel_usuario.numero_exterior, numero_interior: @nobel_usuario.numero_interior, sexo: @nobel_usuario.sexo, telefono: @nobel_usuario.telefono } }
    end

    assert_redirected_to nobel_usuario_url(NobelUsuario.last)
  end

  test "should show nobel_usuario" do
    get nobel_usuario_url(@nobel_usuario)
    assert_response :success
  end

  test "should get edit" do
    get edit_nobel_usuario_url(@nobel_usuario)
    assert_response :success
  end

  test "should update nobel_usuario" do
    patch nobel_usuario_url(@nobel_usuario), params: { nobel_usuario: { apellido_materno: @nobel_usuario.apellido_materno, apellido_paterno: @nobel_usuario.apellido_paterno, codigo_postal: @nobel_usuario.codigo_postal, confirmar_contraseña: @nobel_usuario.confirmar_contraseña, confirmar_correo: @nobel_usuario.confirmar_correo, contraseña: @nobel_usuario.contraseña, correo: @nobel_usuario.correo, domicilio: @nobel_usuario.domicilio, escolaridad: @nobel_usuario.escolaridad, estado: @nobel_usuario.estado, estado_civil: @nobel_usuario.estado_civil, fecha_de_nacimiento: @nobel_usuario.fecha_de_nacimiento, municipio: @nobel_usuario.municipio, nombre: @nobel_usuario.nombre, numero_exterior: @nobel_usuario.numero_exterior, numero_interior: @nobel_usuario.numero_interior, sexo: @nobel_usuario.sexo, telefono: @nobel_usuario.telefono } }
    assert_redirected_to nobel_usuario_url(@nobel_usuario)
  end

  test "should destroy nobel_usuario" do
    assert_difference("NobelUsuario.count", -1) do
      delete nobel_usuario_url(@nobel_usuario)
    end

    assert_redirected_to nobel_usuarios_url
  end
end
