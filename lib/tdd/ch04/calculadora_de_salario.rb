# frozen_string_literal: true

# CalculadoraDeSalario
class CalculadoraDeSalario
  def calcula_salario(funcionario)
    if salario_acima_do_limite(funcionario)
      porcentagem = funcionario.cargo[:porcentagem_acima_do_limite]
    else
      porcentagem = funcionario.cargo[:porcentagem_base]
    end

    funcionario.salario * porcentagem
  end

  def salario_acima_do_limite(funcionario)
    funcionario.salario > funcionario.cargo[:limite]
  end
end
