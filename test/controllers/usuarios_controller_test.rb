require "test_helper"

class UsuariosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @usuario = usuarios(:one)
  end

  test "should get index" do
    get usuarios_url
    assert_response :success
  end

  test "should get new" do
    get new_usuario_url
    assert_response :success
  end

  test "should create usuario" do
    assert_difference("Usuario.count") do
      post usuarios_url, params: { usuario: { apellido_materno: @usuario.apellido_materno, apellido_paterno: @usuario.apellido_paterno, codigo_postal: @usuario.codigo_postal, confirmar_contraseña: @usuario.confirmar_contraseña, confirmar_correo: @usuario.confirmar_correo, contraseña: @usuario.contraseña, correo: @usuario.correo, domicilio: @usuario.domicilio, escolaridad: @usuario.escolaridad, estado: @usuario.estado, estado_civil: @usuario.estado_civil, fecha_de_nacimiento: @usuario.fecha_de_nacimiento, municipio: @usuario.municipio, nombre: @usuario.nombre, numero_exterior: @usuario.numero_exterior, numero_interior: @usuario.numero_interior, sexo: @usuario.sexo, telefono: @usuario.telefono } }
    end

    assert_redirected_to usuario_url(Usuario.last)
  end

  test "should show usuario" do
    get usuario_url(@usuario)
    assert_response :success
  end

  test "should get edit" do
    get edit_usuario_url(@usuario)
    assert_response :success
  end

  test "should update usuario" do
    patch usuario_url(@usuario), params: { usuario: { apellido_materno: @usuario.apellido_materno, apellido_paterno: @usuario.apellido_paterno, codigo_postal: @usuario.codigo_postal, confirmar_contraseña: @usuario.confirmar_contraseña, confirmar_correo: @usuario.confirmar_correo, contraseña: @usuario.contraseña, correo: @usuario.correo, domicilio: @usuario.domicilio, escolaridad: @usuario.escolaridad, estado: @usuario.estado, estado_civil: @usuario.estado_civil, fecha_de_nacimiento: @usuario.fecha_de_nacimiento, municipio: @usuario.municipio, nombre: @usuario.nombre, numero_exterior: @usuario.numero_exterior, numero_interior: @usuario.numero_interior, sexo: @usuario.sexo, telefono: @usuario.telefono } }
    assert_redirected_to usuario_url(@usuario)
  end

  test "should destroy usuario" do
    assert_difference("Usuario.count", -1) do
      delete usuario_url(@usuario)
    end

    assert_redirected_to usuarios_url
  end
end
