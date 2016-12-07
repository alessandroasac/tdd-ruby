# frozen_string_literal: true

module Cargo
  DESENVOLVEDOR = {
    porcentagem_base: 0.9,
    porcentagem_acima_do_limite: 0.8,
    limite: 3_000
  }.freeze

  DBA = {
    porcentagem_base: 0.85,
    porcentagem_acima_do_limite: 0.75,
    limite: 2_500
  }.freeze

  TESTADOR = DBA
end
