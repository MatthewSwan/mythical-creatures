class Werewolf
  def initialize(name, location = "London")
    @name = name
    @location = location
    @human = true
    @wolf = false
  end

  def name
    @name
  end

  def location
    @location
  end

  def human?
    @human
  end

  def change!
    if  @human == false
      @wolf = false
      @human = true
    else
      @human = false
      @wolf = true
    end
  end

  def wolf?
   @wolf
  end
end
