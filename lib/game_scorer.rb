class String
  define_method(:beats?) do |opponent|
    beats = nil

    scores = {"1" => :rock,
              "2" => :paper,
              "3" => :scissors}

    player1 = scores.fetch(self)
    player2 = scores.fetch(opponent)

    if player1 == :rock        && player2 == :scissors
      beats = true
    elsif player1 == :rock     && player2 == :rock
      beats = nil
    elsif player1 == :rock     && player2 == :paper
      beats = false
    elsif player1 == :paper    && player2 == :rock
      beats = true
    elsif player1 == :paper    && player2 == :paper
      beats = nil
    elsif player1 == :paper    && player2 == :scissors
      beats = false
    elsif player1 == :scissors && player2 == :paper
      beats = true
    elsif player1 == :scissors && player2 == :scissors
      beats = nil
    elsif player1 == :scissors && player2 == :rock
      beats = false
    end

    beats
  end
end
