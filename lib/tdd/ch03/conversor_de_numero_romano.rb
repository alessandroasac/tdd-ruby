# ConversorDeNumeroRomano
class ConversorDeNumeroRomano
  TABELA = {
    'I' => 1,
    'V' => 5,
    'X' => 10,
    'L' => 50,
    'C' => 100,
    'D' => 500,
    'M' => 1_000
  }.freeze

  def converte(numero_em_romano)
    ultimo_vizinho_da_direita = 0
    numero_em_romano.split('')
                    .map { |digito| TABELA[digito] }
                    .reverse
                    .reduce(0) do |acumulador, digito|
      multiplicador = digito < ultimo_vizinho_da_direita ? -1 : 1
      # atualiza o vizinho da direita
      ultimo_vizinho_da_direita = digito
      acumulador + (digito * multiplicador)
    end
  end
end
