# frozen_string_literal: true

# QuinzeOuVinteCincoPorCento
class QuinzeOuVinteCincoPorCento
  def calcula(funcionario)
    return funcionario.salario * 0.85 if funcionario.salario < 2_500
    funcionario.salario * 0.75
  end
end
