# frozen_string_literal: true

# DezOuVintePorCento
class DezOuVintePorCento
  def calcula(funcionario)
    return funcionario.salario * 0.8 if funcionario.salario > 3_000
    funcionario.salario * 0.9
  end
end
