class Simon
  COLORS = %w(red blue green yellow)

  attr_accessor :sequence_length, :game_over, :seq

  def initialize
    @sequence_length = 1
    @game_over = false
    @seq = []
  end

  def play
    until @game_over
      take_turn
    end
    
      game_over_message
      self.reset_game
    
  end

  def take_turn

    if self.game_over != true
        self.show_sequence
        self.require_sequence
        round_success_message
        self.sequence_length += 1
    else
      game_over_message
      self.reset_game
    end
  end

  def show_sequence
   self.add_random_color
  end

  def require_sequence

  end

  def add_random_color
    colors = ['red', 'blue', 'yellow', 'green']
    seq << colors.sample
  end 

  def round_success_message

  end

  def game_over_message

  end

  def reset_game
    self.game_over = false
    @seq = []
    self.sequence_length = 1
  end
end
