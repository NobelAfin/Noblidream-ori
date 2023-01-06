require "application_system_test_case"

class NobelUsuariosTest < ApplicationSystemTestCase
  setup do
    @nobel_usuario = nobel_usuarios(:one)
  end

  test "visiting the index" do
    visit nobel_usuarios_url
    assert_selector "h1", text: "Nobel usuarios"
  end

  test "should create nobel usuario" do
    visit nobel_usuarios_url
    click_on "New nobel usuario"

    fill_in "Apellido materno", with: @nobel_usuario.apellido_materno
    fill_in "Apellido paterno", with: @nobel_usuario.apellido_paterno
    fill_in "Codigo postal", with: @nobel_usuario.codigo_postal
    fill_in "Confirmar contraseña", with: @nobel_usuario.confirmar_contraseña
    fill_in "Confirmar correo", with: @nobel_usuario.confirmar_correo
    fill_in "Contraseña", with: @nobel_usuario.contraseña
    fill_in "Correo", with: @nobel_usuario.correo
    fill_in "Domicilio", with: @nobel_usuario.domicilio
    fill_in "Escolaridad", with: @nobel_usuario.escolaridad
    fill_in "Estado", with: @nobel_usuario.estado
    fill_in "Estado civil", with: @nobel_usuario.estado_civil
    fill_in "Fecha de nacimiento", with: @nobel_usuario.fecha_de_nacimiento
    fill_in "Municipio", with: @nobel_usuario.municipio
    fill_in "Nombre", with: @nobel_usuario.nombre
    fill_in "Numero exterior", with: @nobel_usuario.numero_exterior
    fill_in "Numero interior", with: @nobel_usuario.numero_interior
    fill_in "Sexo", with: @nobel_usuario.sexo
    fill_in "Telefono", with: @nobel_usuario.telefono
    click_on "Create Nobel usuario"

    assert_text "Nobel usuario was successfully created"
    click_on "Back"
  end

  test "should update Nobel usuario" do
    visit nobel_usuario_url(@nobel_usuario)
    click_on "Edit this nobel usuario", match: :first

    fill_in "Apellido materno", with: @nobel_usuario.apellido_materno
    fill_in "Apellido paterno", with: @nobel_usuario.apellido_paterno
    fill_in "Codigo postal", with: @nobel_usuario.codigo_postal
    fill_in "Confirmar contraseña", with: @nobel_usuario.confirmar_contraseña
    fill_in "Confirmar correo", with: @nobel_usuario.confirmar_correo
    fill_in "Contraseña", with: @nobel_usuario.contraseña
    fill_in "Correo", with: @nobel_usuario.correo
    fill_in "Domicilio", with: @nobel_usuario.domicilio
    fill_in "Escolaridad", with: @nobel_usuario.escolaridad
    fill_in "Estado", with: @nobel_usuario.estado
    fill_in "Estado civil", with: @nobel_usuario.estado_civil
    fill_in "Fecha de nacimiento", with: @nobel_usuario.fecha_de_nacimiento
    fill_in "Municipio", with: @nobel_usuario.municipio
    fill_in "Nombre", with: @nobel_usuario.nombre
    fill_in "Numero exterior", with: @nobel_usuario.numero_exterior
    fill_in "Numero interior", with: @nobel_usuario.numero_interior
    fill_in "Sexo", with: @nobel_usuario.sexo
    fill_in "Telefono", with: @nobel_usuario.telefono
    click_on "Update Nobel usuario"

    assert_text "Nobel usuario was successfully updated"
    click_on "Back"
  end

  test "should destroy Nobel usuario" do
    visit nobel_usuario_url(@nobel_usuario)
    click_on "Destroy this nobel usuario", match: :first

    assert_text "Nobel usuario was successfully destroyed"
  end
end
