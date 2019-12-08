require 'test_helper'

class ServicosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @servico = servicos(:one)
  end

  test "should get index" do
    get servicos_url
    assert_response :success
  end

  test "should get new" do
    get new_servico_url
    assert_response :success
  end

  test "should create servico" do
    assert_difference('Servico.count') do
      post servicos_url, params: { servico: { controlador_brascontrol: @servico.controlador_brascontrol, controlador_dataprom: @servico.controlador_dataprom, controlador_digicon: @servico.controlador_digicon, controlador_mecanico: @servico.controlador_mecanico, controlador_tesc: @servico.controlador_tesc, cruzamento: @servico.cruzamento, data: @servico.data, executores_do_servico: @servico.executores_do_servico, hora_final: @servico.hora_final, hora_inicial: @servico.hora_inicial, lampada_127x100_amarelo: @servico.lampada_127x100_amarelo, lampada_127x100_verde: @servico.lampada_127x100_verde, lampada_127x100_vermelho: @servico.lampada_127x100_vermelho, lampada_220x100_amarelo: @servico.lampada_220x100_amarelo, lampada_220x100_verde: @servico.lampada_220x100_verde, lampada_220x100_vermelho: @servico.lampada_220x100_vermelho, ld: @servico.ld, le: @servico.le, lente_amarelo: @servico.lente_amarelo, lente_verde: @servico.lente_verde, lente_vermelho: @servico.lente_vermelho, numero_os: @servico.numero_os, porta_foco_g: @servico.porta_foco_g, porta_foco_pd: @servico.porta_foco_pd, porta_foco_t: @servico.porta_foco_t, sentido: @servico.sentido, servico_executado: @servico.servico_executado, supervisor: @servico.supervisor } }
    end

    assert_redirected_to servico_url(Servico.last)
  end

  test "should show servico" do
    get servico_url(@servico)
    assert_response :success
  end

  test "should get edit" do
    get edit_servico_url(@servico)
    assert_response :success
  end

  test "should update servico" do
    patch servico_url(@servico), params: { servico: { controlador_brascontrol: @servico.controlador_brascontrol, controlador_dataprom: @servico.controlador_dataprom, controlador_digicon: @servico.controlador_digicon, controlador_mecanico: @servico.controlador_mecanico, controlador_tesc: @servico.controlador_tesc, cruzamento: @servico.cruzamento, data: @servico.data, executores_do_servico: @servico.executores_do_servico, hora_final: @servico.hora_final, hora_inicial: @servico.hora_inicial, lampada_127x100_amarelo: @servico.lampada_127x100_amarelo, lampada_127x100_verde: @servico.lampada_127x100_verde, lampada_127x100_vermelho: @servico.lampada_127x100_vermelho, lampada_220x100_amarelo: @servico.lampada_220x100_amarelo, lampada_220x100_verde: @servico.lampada_220x100_verde, lampada_220x100_vermelho: @servico.lampada_220x100_vermelho, ld: @servico.ld, le: @servico.le, lente_amarelo: @servico.lente_amarelo, lente_verde: @servico.lente_verde, lente_vermelho: @servico.lente_vermelho, numero_os: @servico.numero_os, porta_foco_g: @servico.porta_foco_g, porta_foco_pd: @servico.porta_foco_pd, porta_foco_t: @servico.porta_foco_t, sentido: @servico.sentido, servico_executado: @servico.servico_executado, supervisor: @servico.supervisor } }
    assert_redirected_to servico_url(@servico)
  end

  test "should destroy servico" do
    assert_difference('Servico.count', -1) do
      delete servico_url(@servico)
    end

    assert_redirected_to servicos_url
  end
end
