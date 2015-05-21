class Bowling
  attr_reader :score
  attr_reader :spare
  attr_reader :strike
  def initialize
    @score = 0
    @spare = 0
    @strike = 0
    @strikebackup=0;
  end
  def hit(pin_count)
    if @strike > 0
      strikecount=1;
    end
    @score += pin_count + pin_count*(@strike + @spare)
    if @spare>0
      @spare = @spare - 1;
    end
    if @strike>0
      @strike = @strike - 1;
    end
    @strike = @strike + @strikebackup
    @strikebackup=0;
  end
  def hitstrike
    @score += 10
    @strike = @strike + 1
    @strikebackup = @strikebackup+1
  end
  def hitspare(pin_count)
    @score += pin_count
    @spare = @spare + 1
  end
end