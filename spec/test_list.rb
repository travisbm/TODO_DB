require 'minitest/autorun'
require 'minitest/pride'

require_relative '../lib/list'

class TestList < Minitest::Test

  def test_list_exists
    assert(List.new)
  end

end
