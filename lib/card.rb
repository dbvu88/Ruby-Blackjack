class Card
  attr_reader :rank

  def initialize(rank, suit)
    @rank = rank
    @suit = suit
  end

  def face
    "#{@rank}#{@suit}"
  end

  def to_points
    if ["J", "Q", "K"].include?(rank)
      return 10
    elsif rank == "A"
      return 11
    else
      return rank
    end
  end

end
