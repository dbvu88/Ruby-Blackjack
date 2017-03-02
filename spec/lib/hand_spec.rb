require "spec_helper"

RSpec.describe Hand do
  # Your tests here
  let(:player1) {Hand.new([Card.new('A', '♠'), Card.new('K', '♥')])}
  let(:player2) {Hand.new([Card.new(9, '♠'), Card.new('A', '♠'), Card.new('K', '♥')])}
  let(:player3) {Hand.new([Card.new('A', '♠'), Card.new('A', '♥'), Card.new('A', '♦'), Card.new('A', '♣')])}
  let(:player4) {Hand.new([Card.new('A', '♠'), Card.new(8, '♥'), Card.new('A', '♦'), Card.new('A', '♣')])}
  let(:dealer) {Hand.new([Card.new(9, '♠'), Card.new('K', '♥')])}

  describe '#score' do
    it 'calculates the total points of the cards in hand' do
      expect(player1.score).to eq(21)
      expect(player2.score).to eq(20)
      expect(player3.score).to eq(14)
      expect(player4.score).to eq(21)
      expect(dealer.score).to eq(19)

    end
  end


end
