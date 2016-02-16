class Centaur
  def initialize(name, breed)
    @name = name
    @breed = breed
    @count = 0
    @standing = true
    @laying = false
  end

  def name
    @name
  end

  def breed
    @breed
  end

  def shoot
    @count += 1
    if @count >= 3 || @laying
      "NO!"
    else
      "Twang!!!"
    end
  end

  def run
    @count += 1
    if @count >= 3 || @laying
      "NO!"
    else
      "Clop clop clop clop!!!"
    end
  end

  def cranky?
    if @count < 3
      false
    else
      true
    end
  end

  def standing?
    @standing
  end

  def sleep
    @count = 0
    if @standing
      "NO!"
    end
  end

  def lay_down
    @standing = false
    @laying = true
  end

  def stand_up
    @standing = true
    @laying = false
  end

  def laying?
    @laying
  end
end
