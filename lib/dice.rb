# frozen_string_literal: true

class Dice
  attr_accessor :all_rolls

  def initialize
    @all_rolls = []
  end

  def roll
    rand(1..6)
  end

  def rolls(num)
    num.times { all_rolls << roll }
  end

  def record_of_rolls
    all_rolls.join(', ')
  end

  def score
    all_rolls.inject { |score, roll| score + roll }
  end
end
