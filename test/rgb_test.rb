require 'minitest/autorun'
require './lib/rgb.rb'

class RgbTest < Minitest::Test
  def test_to_hex
    assert_equal '#000000', to_hex(0, 0, 0)
    assert_equal '#ffffff', to_hex(255, 255, 255)
    assert_equal '#88296d', to_hex(136, 41, 109)
  end

  def test_to_ints
    assert_equal [0, 0, 0], to_ints('#000000')
    assert_equal [255, 255, 255], to_ints('#ffffff')
    assert_equal [24, 252, 31], to_ints('#18fc1f')
  end

end
