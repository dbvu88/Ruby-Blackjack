class Hand
  attr_accessor :cards

  def initialize(cards)
    @cards = cards
  end

  def score
    total_points = 0
    total_A = 0

    @cards.each do |card|
      if card.to_points == 11 then total_A += 1 end
      total_points += card.to_points
    end

    while total_points > 21 && total_A > 0
      total_points -= 10
      total_A -= 1
    end
    total_points
  end
end
