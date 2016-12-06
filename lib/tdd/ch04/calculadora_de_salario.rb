# frozen_string_literal: true
# CalculadoraDeSalario
class CalculadoraDeSalario
  def calcula_salario(funcionario)
    if funcionario.cargo == Cargo::DESENVOLVEDOR
      return funcionario.salario * 0.8 if funcionario.salario > 3_000
      return funcionario.salario * 0.9
    end
    funcionario.salario * 0.85
  end
end
