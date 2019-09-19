# frozen_string_literal: true

require 'dice'

describe Dice do
  subject(:dice) { described_class.new }

  describe '#roll' do
    it 'return a random number between 1 and 6' do
      result = dice.roll

      expect(result).to be_between(1, 6)
    end
  end

  describe '#rolls' do
    it 'specified number of rolls' do
      expect(dice.rolls(2)).to eq dice.all_rolls.length
    end
  end

  describe '#record_of_rolls' do
    it 'returns each dice roll' do
      roll1 = 1
      roll2 = 2
      dice.all_rolls << roll1
      dice.all_rolls << roll2

      expect(dice.record_of_rolls).to eq '1, 2'
    end
  end

  describe '#score' do
    it 'returns a sum of 2 rolls' do
      roll1 = dice.roll
      roll2 = dice.roll
      dice.all_rolls << roll1
      dice.all_rolls << roll2

      expect(dice.score).to eq(roll1 + roll2)
    end
  end
end
