class Dragon
  def initialize(name, color, rider, starving = true)
    @name = name
    @rider = rider
    @color = color
    @starving = starving
    @count = 0
  end

  def name
    @name
  end

  def rider
    @rider
  end

  def color
    @color
  end

  def hungry?
    @count < 3
  end

  def eat
    @count += 1
    if hungry?
      starving = true
    else
      starving = false
    end
  end
end
