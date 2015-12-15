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
end