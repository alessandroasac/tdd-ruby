# frozen_string_literal: true

# CarrinhoDeComprasBuilder
class CarrinhoDeComprasBuilder
  def initialize
    @carrinho = CarrinhoDeCompras.new
  end

  def com_itens(*valores)
    valores.each { |valor| @carrinho << Item.new('item', 1, valor) }
    self
  end

  def cria
    @carrinho
  end
end
