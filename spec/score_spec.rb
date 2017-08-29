
require 'minitest/autorun'
require 'minitest/reporters'
require_relative '../lib/score'
# require_relative 'wave-1-game.rb'

describe "Score" do
  describe "#initialize" do
    it " should give you an empty array" do
      # words = []
      my_class = Scrabble::Score.new
      # my_class.must_respond_to :words
      my_class.words.must_be_empty
    end
  end

  describe " self.score method" do
    it " Check for the short word where the letters don't repeat" do
      my_class = Scrabble::Score
      my_class.score("cat").must_equal 5
    end
  end


end
