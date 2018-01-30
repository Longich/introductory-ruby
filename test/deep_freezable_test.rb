require 'minitest/autorun'
require './lib/bank'
require './lib/team'
require './lib/deep_freezable'

class DeepFreezableTest < Minitest::Test
  def test_freeze
    assert_equal ['Japan', 'US', 'India'], Team::COUNTRIES 
    assert Team::COUNTRIES.frozen?
    assert Team::COUNTRIES.all? { |country| country.frozen? }
  end
end
