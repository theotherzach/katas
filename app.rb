class Game

  def initialize
    @rolls = []
    @current_roll = 0
  end

  def roll(pins)
    @rolls << pins
    @current_roll += 1
  end

  def score
    score = 0
    frame_index = 0
    10.times do
      if is_strike?(frame_index) 
        score += strike_bonus(frame_index) 
        frame_index += 1
      elsif is_spare?(frame_index) 
        score += spare_bonus(frame_index)
        frame_index += 2
      else
        score += open_frame_total(frame_index) 
        frame_index += 2
      end
    end

    score
  end

  def is_strike?(frame_index)
    @rolls[frame_index] == 10 
  end

  def strike_bonus(frame_index)
    10 + @rolls[frame_index + 1] + @rolls[frame_index + 2]
  end

  def is_spare?(frame_index)
    @rolls[frame_index] + @rolls[frame_index + 1] == 10
  end
  
  def spare_bonus(frame_index)
    10 + @rolls[frame_index + 2]
  end

  def open_frame_total(frame_index)
    @rolls[frame_index] + @rolls[frame_index + 1] 
  end
end
