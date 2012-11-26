class Game

  def initialize
    @rolls = Array.new(21, 0)
    @current_roll = 0
  end

  def roll(pins)
    @rolls[@current_roll] = pins
    @current_roll += 1
  end

  def score
    score = 0
    frames = 1..10
    frame_index = 0

    frames.each do
      if strike?(frame_index)
        score += strike_bonus(frame_index)
        frame_index += 1
      elsif spare?(frame_index)
        score += spare_bonus(frame_index)
        frame_index += 2
      else
        score += score_frame(frame_index)
        frame_index += 2
      end
    end

    score
  end

  def strike?(frame_index)
    @rolls[frame_index] == 10
  end

  def strike_bonus(frame_index)
    10 + @rolls[frame_index + 1] + @rolls[frame_index + 2]
  end

  def spare?(frame_index)
    @rolls[frame_index] + @rolls[frame_index + 1] == 10
  end

  def spare_bonus(frame_index)
    10 + @rolls[frame_index + 2]
  end

  def score_frame(frame_index)
    @rolls[frame_index] + @rolls[frame_index + 1]
  end
end
