# frozen_string_literal: true

# NotaFiscal
class NotaFiscal
  attr_reader :cliente, :valor, :data

  def initialize(cliente, valor, data)
    @cliente = cliente
    @valor = valor
    @data = data
  end
end
