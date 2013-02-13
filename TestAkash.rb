require  '.\ak'
require 'test/unit'

class TestAkash < Test::Unit::TestCase
	def test_new
		assert_equal(10, Akash.new.a)
	end
end