require 'minitest/autorun'
require './wordplay.rb'

class Tester < Minitest::Test

  def test_sentences
    assert_equal(["yes", "no", "abcd", "efg"], "yes. no. abcd. efg.".sentences)
    
    test_text = %q{Hello. This is a test
of sentence seperation. This is the end
of the test.}
    assert_equal("This is the end of the test", test_text.sentences[2])
  end
  
  def test_words
    assert_equal(%w{this is a test}, "this is a test".words)
    assert_equal(%w{these are mostly words}, "these are, mostly, words".words)
  end
end