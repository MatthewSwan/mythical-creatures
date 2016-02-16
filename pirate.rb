class Pirate
  def initialize(name, job = "Scallywag", cursed = false)
    @name = name
    @job = job
    @cursed = cursed
    @count = 0
    @booty = 0
  end

  def name
    @name
  end

  def job
    @job
  end

  def cursed?
    @count >= 3
  end

  def commit_heinous_act
    @count += 1
    if cursed?
      false
    else
       true
    end
  end

  def rob_ship
    @booty += 100
  end

  def booty
    @booty
  end
end
