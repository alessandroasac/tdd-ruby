require 'test_helper'

# CalculadoraDeSalarioTest
class CalculadoraDeSalarioTest < Minitest::Test
  def test_deve_calcular_para_desenvolvedores_com_salario_abaixo_do_limite
    calculadora = CalculadoraDeSalario.new
    desenvolvedor = Funcionario.new('Alessandro', 1_500.0, Cargo::DESENVOLVEDOR)

    salario = calculadora.calcula_salario(desenvolvedor)

    assert_equal 1_500 * 0.9, salario
  end

  def test_deve_calcular_para_desenvolvedores_com_salario_acima_do_limite
    calculadora = CalculadoraDeSalario.new
    desenvolvedor = Funcionario.new('Alessandro', 4_000.0, Cargo::DESENVOLVEDOR)

    salario = calculadora.calcula_salario(desenvolvedor)

    assert_equal 4_000 * 0.8, salario
  end

  def test_deve_calcular_salario_para_dbas_com_salario_abaixo_do_limite
    calculadora = CalculadoraDeSalario.new
    desenvolvedor = Funcionario.new('Alessandro', 500.0, Cargo::DBA)

    salario = calculadora.calcula_salario(desenvolvedor)

    assert_equal 500 * 0.85, salario
  end
end
