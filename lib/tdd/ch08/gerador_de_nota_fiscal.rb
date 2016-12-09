# frozen_string_literal: true

# GeradorDeNotaFiscal
class GeradorDeNotaFiscal
  def initialize(acoes, relogio = RelogioDoSistema.new, tabela = Tabela.new)
    @acoes = acoes
    @relogio = relogio
    @tabela = tabela
  end

  def gera(pedido)
    nf = NotaFiscal.new(pedido.cliente,
                        pedido.valor_total * @tabela[pedido.valor_total],
                        @relogio.hoje)

    @acoes.each { |acao| acao.executa(nf) }

    nf
  end
end
