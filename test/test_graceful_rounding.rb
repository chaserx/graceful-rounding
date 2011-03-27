require_relative '../lib/graceful_rounding.rb'
require 'minitest/autorun'




class TestGracefulRounding < MiniTest::Unit::TestCase
  def setup
    @t = Time.new(2011,03,25,21,05,0, "-04:00")
  end
  
  def test_graceful_rounding
    assert_equal Time.new(2011, 03,25,21,00,0, "-04:00"), @t.graceful_rounding
    
    assert_equal Time.new(2011, 03,26,19,00,0, "-04:00"), Time.new(2011, 03,26,19,00,0, "-04:00").graceful_rounding
    assert_equal Time.new(2011, 03,26,19,30,0, "-04:00"), Time.new(2011, 03,26,19,30,0, "-04:00").graceful_rounding
    assert_equal Time.new(2011, 03,26,19,15,0, "-04:00"), Time.new(2011, 03,26,19,15,0, "-04:00").graceful_rounding
    assert_equal Time.new(2011, 03,26,19,45,0, "-04:00"), Time.new(2011, 03,26,19,45,0, "-04:00").graceful_rounding
    
    assert_equal Time.new(2011, 03,26,19,00,0, "-04:00"), Time.new(2011, 03,26,19,06,0, "-04:00").graceful_rounding
    assert_equal Time.new(2011, 03,26,19,15,0, "-04:00"), Time.new(2011, 03,26,19,18,0, "-04:00").graceful_rounding
    assert_equal Time.new(2011, 03,26,19,45,0, "-04:00"), Time.new(2011, 03,26,19,38,0, "-04:00").graceful_rounding
    assert_equal Time.new(2011, 03,26,20,00,0, "-04:00"), Time.new(2011, 03,26,19,55,0, "-04:00").graceful_rounding
    
    refute_equal Time.new(2011, 03,26,19,30,0, "-04:00"), Time.new(2011, 03,26,19,18,0, "-04:00").graceful_rounding
  end
  
end