require "application_system_test_case"

class UsuariosTest < ApplicationSystemTestCase
  setup do
    @usuario = usuarios(:one)
  end

  test "visiting the index" do
    visit usuarios_url
    assert_selector "h1", text: "Usuarios"
  end

  test "should create usuario" do
    visit usuarios_url
    click_on "New usuario"

    fill_in "Apellido materno", with: @usuario.apellido_materno
    fill_in "Apellido paterno", with: @usuario.apellido_paterno
    fill_in "Codigo postal", with: @usuario.codigo_postal
    fill_in "Confirmar contraseña", with: @usuario.confirmar_contraseña
    fill_in "Confirmar correo", with: @usuario.confirmar_correo
    fill_in "Contraseña", with: @usuario.contraseña
    fill_in "Correo", with: @usuario.correo
    fill_in "Domicilio", with: @usuario.domicilio
    fill_in "Escolaridad", with: @usuario.escolaridad
    fill_in "Estado", with: @usuario.estado
    fill_in "Estado civil", with: @usuario.estado_civil
    fill_in "Fecha de nacimiento", with: @usuario.fecha_de_nacimiento
    fill_in "Municipio", with: @usuario.municipio
    fill_in "Nombre", with: @usuario.nombre
    fill_in "Numero exterior", with: @usuario.numero_exterior
    fill_in "Numero interior", with: @usuario.numero_interior
    fill_in "Sexo", with: @usuario.sexo
    fill_in "Telefono", with: @usuario.telefono
    click_on "Create Usuario"

    assert_text "Usuario was successfully created"
    click_on "Back"
  end

  test "should update Usuario" do
    visit usuario_url(@usuario)
    click_on "Edit this usuario", match: :first

    fill_in "Apellido materno", with: @usuario.apellido_materno
    fill_in "Apellido paterno", with: @usuario.apellido_paterno
    fill_in "Codigo postal", with: @usuario.codigo_postal
    fill_in "Confirmar contraseña", with: @usuario.confirmar_contraseña
    fill_in "Confirmar correo", with: @usuario.confirmar_correo
    fill_in "Contraseña", with: @usuario.contraseña
    fill_in "Correo", with: @usuario.correo
    fill_in "Domicilio", with: @usuario.domicilio
    fill_in "Escolaridad", with: @usuario.escolaridad
    fill_in "Estado", with: @usuario.estado
    fill_in "Estado civil", with: @usuario.estado_civil
    fill_in "Fecha de nacimiento", with: @usuario.fecha_de_nacimiento
    fill_in "Municipio", with: @usuario.municipio
    fill_in "Nombre", with: @usuario.nombre
    fill_in "Numero exterior", with: @usuario.numero_exterior
    fill_in "Numero interior", with: @usuario.numero_interior
    fill_in "Sexo", with: @usuario.sexo
    fill_in "Telefono", with: @usuario.telefono
    click_on "Update Usuario"

    assert_text "Usuario was successfully updated"
    click_on "Back"
  end

  test "should destroy Usuario" do
    visit usuario_url(@usuario)
    click_on "Destroy this usuario", match: :first

    assert_text "Usuario was successfully destroyed"
  end
end
