# frozen_string_literal: true

require 'test_helper'

# GeradorDeNotaFiscalTest
class GeradorDeNotaFiscalTest < Minitest::Test
  def setup
    @dao = Minitest::Mock.new.expect(:executa, nil, [NotaFiscal])
    @sap = Minitest::Mock.new.expect(:executa, nil, [NotaFiscal])
    @tabela = Minitest::Mock.new.expect(:[], 0.2, [Numeric])
    @relogio = Minitest::Mock.new.expect(:hoje, nil)

    @pedido = Pedido.new('Alessandro', 1_000, 1)
    @gerador = GeradorDeNotaFiscal.new([@dao, @sap], @relogio, @tabela)
  end

  def test_deve_gerar_nf_com_valor_de_imposto_descontado
    nf = @gerador.gera(@pedido)

    assert_equal 1_000 * 0.2, nf.valor
  end

  def test_deve_persistir_nf_gerada
    @gerador.gera(@pedido)

    @dao.verify
  end

  def test_deve_enviar_nf_gerada_para_sap
    @gerador.gera(@pedido)

    @sap.verify
  end

  def test_deve_invocar_acoes_posteriores
    @gerador.gera(@pedido)

    @dao.verify
    @sap.verify
  end

  def test_deve_consultar_a_tabela_para_calcular_valor
    nf = @gerador.gera(@pedido)

    assert_equal 1_000 * 0.2, nf.valor

    @tabela.verify
  end
end
