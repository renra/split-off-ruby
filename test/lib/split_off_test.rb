gem 'minitest'
require 'minitest/autorun'
require_relative '../../lib/split_off'

class SplitOffTest < Minitest::Test
  def setup
    @subject = {a: 1, b: 2, c: 3, d: nil}
  end

  def test_split_off
    result = @subject.split_off!(:a, :b)

    assert_equal result.keys, [:a, :b]
    assert_equal result[:a], 1
    assert_equal result[:b], 2
  end

  def test_comapct
    result = @subject.split_off!(:d)
    assert_equal result.keys, []
  end

  def test_original_hash
    @subject.split_off!(:a, :b)

    assert_equal @subject.keys, [:c, :d]
    assert_equal @subject[:c], 3
    assert_equal @subject[:d], nil
  end

end
