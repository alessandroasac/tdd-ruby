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
end
