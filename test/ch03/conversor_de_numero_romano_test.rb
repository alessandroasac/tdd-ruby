require 'test_helper'

# ConversorDeNumeroRomanoTest
class ConversorDeNumeroRomanoTest < Minitest::Test
  def test_deve_entender_o_simbolo_i
    romano = ConversorDeNumeroRomano.new
    numero = romano.converte 'I'
    assert_equal 1, numero
  end

  def test_deve_entender_o_simbolo_v
    romano = ConversorDeNumeroRomano.new
    numero = romano.converte 'V'
    assert_equal 5, numero
  end

  def test_deve_entender_dois_simbolos_como_ii
    romano = ConversorDeNumeroRomano.new
    numero = romano.converte 'II'
    assert_equal 2, numero
  end

  def test_deve_entender_quatro_simbolos_dois_a_dois_como_xxii
    romano = ConversorDeNumeroRomano.new
    numero = romano.converte 'XXII'
    assert_equal 22, numero
  end

  def test_deve_entender_numeros_como_ix
    romano = ConversorDeNumeroRomano.new
    numero = romano.converte 'IX'
    assert_equal 9, numero
  end

  def test_deve_entender_numeros_complexos_como_xxiv
    romano = ConversorDeNumeroRomano.new
    numero = romano.converte 'XXIV'
    assert_equal 24, numero
  end
end
