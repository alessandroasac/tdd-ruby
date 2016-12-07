# encoding: utf-8
# frozen_string_literal: true

require 'test_helper'

# MaiorPrecoTest
class MaiorPrecoTest < Minitest::Test
  def test_deve_retornar_zero_se_carrinho_vazio
    carrinho = CarrinhoDeCompras.new

    algoritmo = MaiorPreco.new
    valor = algoritmo.encontra(carrinho)

    assert_equal 0, valor
  end

  def test_deve_retornar_valor_do_item_se_carrinho_com_1_elemento
    carrinho = CarrinhoDeCompras.new
    carrinho << Item.new('Geladeira', 1, 900.0)

    algoritmo = MaiorPreco.new
    valor = algoritmo.encontra(carrinho)

    assert_equal 900.0, valor
  end

  def test_deve_retornar_maior_valor_se_carrinho_contem_muitos_elementos
    carrinho = CarrinhoDeCompras.new
    carrinho << Item.new('Geladeira', 1, 900.0)
    carrinho << Item.new('Fogão', 1, 1500.0)
    carrinho << Item.new('Máquina de Lavar', 1, 750.0)

    algoritmo = MaiorPreco.new
    valor = algoritmo.encontra(carrinho)

    assert_equal 1500.0, valor
  end
end
