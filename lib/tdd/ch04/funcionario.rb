# Funcionario
class Funcionario
  attr_reader :nome, :salario, :cargo

  def initialize(nome, salario, cargo)
    @nome = nome
    @salario = salario
    @cargo = cargo
  end
end
