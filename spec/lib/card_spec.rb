require "spec_helper"

RSpec.describe Card do
  # Your tests here
  let(:card){Card.new(9, '♠')}
  let(:king_of_hear){Card.new('K', '♥')}
  let(:ace_of_spade){Card.new('A', '♠')}

  describe '#new' do
    it "creates a new card object" do
      expect(Card.new(9, '♠')).to be_a(Card)
    end
  end

  describe '#rank' do
    it "return the rank of the card" do
      expect(card.rank).to eq(9)
    end
  end

  describe '#face' do
    it "return the face of the card" do
      expect(card.face).to eq('9♠')
    end
  end

  describe '#face' do
    it "return the face of the card" do
      expect(Card.new('J', '♠').face).to eq('J♠')
    end
  end

  describe '#to_points' do
    it 'convert rank to Black Jack points' do
      expect(card.to_points).to eq(9)
      expect(king_of_hear.to_points).to eq(10)
      expect(ace_of_spade.to_points).to eq(11)
    end
  end




end
