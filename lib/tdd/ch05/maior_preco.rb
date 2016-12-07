# frozen_string_literal: true

# Este codigo foi movido para CarrinhoDeCompras pois fica mais OO
class MaiorPreco
  def encontra(carrinho)
    carrinho.itens.reduce(0) do |maior, item|
      maior < item.valor_total ? item.valor_total : maior
    end
  end
end
