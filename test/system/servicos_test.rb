require "application_system_test_case"

class ServicosTest < ApplicationSystemTestCase
  setup do
    @servico = servicos(:one)
  end

  test "visiting the index" do
    visit servicos_url
    assert_selector "h1", text: "Servicos"
  end

  test "creating a Servico" do
    visit servicos_url
    click_on "New Servico"

    check "Controlador brascontrol" if @servico.controlador_brascontrol
    check "Controlador dataprom" if @servico.controlador_dataprom
    check "Controlador digicon" if @servico.controlador_digicon
    check "Controlador mecanico" if @servico.controlador_mecanico
    check "Controlador tesc" if @servico.controlador_tesc
    fill_in "Cruzamento", with: @servico.cruzamento
    fill_in "Data", with: @servico.data
    fill_in "Executores do servico", with: @servico.executores_do_servico
    fill_in "Hora final", with: @servico.hora_final
    fill_in "Hora inicial", with: @servico.hora_inicial
    fill_in "Lampada 127x100 amarelo", with: @servico.lampada_127x100_amarelo
    fill_in "Lampada 127x100 verde", with: @servico.lampada_127x100_verde
    fill_in "Lampada 127x100 vermelho", with: @servico.lampada_127x100_vermelho
    fill_in "Lampada 220x100 amarelo", with: @servico.lampada_220x100_amarelo
    fill_in "Lampada 220x100 verde", with: @servico.lampada_220x100_verde
    fill_in "Lampada 220x100 vermelho", with: @servico.lampada_220x100_vermelho
    check "Ld" if @servico.ld
    check "Le" if @servico.le
    fill_in "Lente amarelo", with: @servico.lente_amarelo
    fill_in "Lente verde", with: @servico.lente_verde
    fill_in "Lente vermelho", with: @servico.lente_vermelho
    fill_in "Numero os", with: @servico.numero_os
    check "Porta foco g" if @servico.porta_foco_g
    check "Porta foco pd" if @servico.porta_foco_pd
    check "Porta foco t" if @servico.porta_foco_t
    fill_in "Sentido", with: @servico.sentido
    fill_in "Servico executado", with: @servico.servico_executado
    fill_in "Supervisor", with: @servico.supervisor
    click_on "Create Servico"

    assert_text "Servico was successfully created"
    click_on "Back"
  end

  test "updating a Servico" do
    visit servicos_url
    click_on "Edit", match: :first

    check "Controlador brascontrol" if @servico.controlador_brascontrol
    check "Controlador dataprom" if @servico.controlador_dataprom
    check "Controlador digicon" if @servico.controlador_digicon
    check "Controlador mecanico" if @servico.controlador_mecanico
    check "Controlador tesc" if @servico.controlador_tesc
    fill_in "Cruzamento", with: @servico.cruzamento
    fill_in "Data", with: @servico.data
    fill_in "Executores do servico", with: @servico.executores_do_servico
    fill_in "Hora final", with: @servico.hora_final
    fill_in "Hora inicial", with: @servico.hora_inicial
    fill_in "Lampada 127x100 amarelo", with: @servico.lampada_127x100_amarelo
    fill_in "Lampada 127x100 verde", with: @servico.lampada_127x100_verde
    fill_in "Lampada 127x100 vermelho", with: @servico.lampada_127x100_vermelho
    fill_in "Lampada 220x100 amarelo", with: @servico.lampada_220x100_amarelo
    fill_in "Lampada 220x100 verde", with: @servico.lampada_220x100_verde
    fill_in "Lampada 220x100 vermelho", with: @servico.lampada_220x100_vermelho
    check "Ld" if @servico.ld
    check "Le" if @servico.le
    fill_in "Lente amarelo", with: @servico.lente_amarelo
    fill_in "Lente verde", with: @servico.lente_verde
    fill_in "Lente vermelho", with: @servico.lente_vermelho
    fill_in "Numero os", with: @servico.numero_os
    check "Porta foco g" if @servico.porta_foco_g
    check "Porta foco pd" if @servico.porta_foco_pd
    check "Porta foco t" if @servico.porta_foco_t
    fill_in "Sentido", with: @servico.sentido
    fill_in "Servico executado", with: @servico.servico_executado
    fill_in "Supervisor", with: @servico.supervisor
    click_on "Update Servico"

    assert_text "Servico was successfully updated"
    click_on "Back"
  end

  test "destroying a Servico" do
    visit servicos_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Servico was successfully destroyed"
  end
end
