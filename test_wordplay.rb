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
  
  def test_sentence_choice
    assert_equal('This is a great test', WordPlay.best_sentences(['This is a test', 'This is another test', 'This is a great test'], %w{test great this}))
    assert_equal('This is a great test', WordPlay.best_sentences(['This is a great test'], %w{still the best}))
  end
  
  def test_basic_pronouns
    assert_equal("i am a robot", WordPlay.switch_pronouns("you are a robot"))
    assert_equal('you are a person', WordPlay.switch_pronouns("i am a person"))
    assert_equal('i love you', WordPlay.switch_pronouns('you love me'))
  end
  
  
end