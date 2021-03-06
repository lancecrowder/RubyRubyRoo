require 'minitest/autorun'
require 'list_with_commas'

class TestlistWithCommas < Minitest::Test
  def setup
    @list = ListWithCommas.new
  end
  
  def test_it_joins_two_words_with_and
    @list.items = ["apple", "orange"]
    assert("apple and orange" == @list.join)
  end

  def test_it_joins_three_words_with_commas
    @list.items = ["apple", "orange", "pear"]
    assert("apple, orange, and pear" == @list.join)
  end

  def test_it_prints_one_word_alone
    @list.items = ["apple"]
    assert("apple" == @list.join, "Lone 'Apple' failed!")
  end
end