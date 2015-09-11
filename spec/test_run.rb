require 'minitest/autorun'
require 'minitest/pride'

require_relative '../bin/run'

class TestRun < Minitest::Test

  def test_run_exists
    assert(Run.new)
  end

end
