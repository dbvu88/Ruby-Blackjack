require "spec_helper"

RSpec.describe Deck do
  # Your tests here
  describe '#initialize' do
    it "create a new shuffled deck" do
      expect(Deck.new).to be_a(Deck)
    end
  end

  describe '#deal' do
    it "return an array of dealt cards" do
      expect(Deck.new.deal(2).size).to eq(2)
      deck = Deck.new
      deck.deal(9)
      expect(deck.cards.size).to eq(52 - 9)
    end
  end
end
