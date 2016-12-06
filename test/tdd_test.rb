# frozen_string_literal: true
require 'test_helper'

# TddTest
class TddTest < Minitest::Test
  def test_that_it_has_a_version_number
    refute_nil ::Tdd::VERSION
  end
end
