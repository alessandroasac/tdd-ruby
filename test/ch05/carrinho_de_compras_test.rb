# encoding: utf-8
# frozen_string_literal: true

require 'test_helper'
require_relative 'carrinho_de_compras_builder'

# CarrinhoDeComprasTest
class CarrinhoDeComprasTest < Minitest::Test
  def setup
    @carrinho_builder = CarrinhoDeComprasBuilder.new
  end

  def test_deve_retornar_zero_se_carrinho_vazio
    carrinho = @carrinho_builder.cria

    assert_equal 0, carrinho.maior_valor
  end

  def test_deve_retornar_valor_do_item_se_carrinho_com_1_elemento
    carrinho = @carrinho_builder.com_itens(900.0).cria

    assert_equal 900.0, carrinho.maior_valor
  end

  def test_deve_retornar_maior_valor_se_carrinho_contem_muitos_elementos
    carrinho = @carrinho_builder.com_itens(900.0, 1500.0, 750.0).cria

    assert_equal 1500.0, carrinho.maior_valor
  end
end
