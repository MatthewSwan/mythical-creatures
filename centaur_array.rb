class Centaur
  def initialize(name, breed)
    @options = [name, breed, 0, true, false]
  end

  def name
    @options[0]
  end

  def breed
    @options[1]
  end

  def shoot
    @options[2] += 1
    if @options[2] >= 3 || @options[4]
      "NO!"
    else
      "Twang!!!"
    end
  end

  def run
    @options[2] +=1
    if @options[2] >= 3 || @options[4]
      "NO!"
    else
      "Clop clop clop clop!!!"
    end
  end

  def cranky?
    if @options[2] < 3
      false
    else
      true
    end
  end

  def standing?
    @options[3]
  end

  def sleep
    @options[2] = 0
    if @options[3]
      "NO!"
    end
  end

  def lay_down
    @options[3] = false
    @options[4] = true
  end

  def laying?
    @options[4]
  end

  def stand_up
    @options[3] = true
    @options[4] = false
  end
end
