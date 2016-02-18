class Centaur

  def initialize(name, breed)
    @options = {"name" => name, "breed" => breed, "count" => 0,
                "standing" => true}
  end

  def name
    @options["name"]
  end

  def breed
    @options["breed"]
  end

  def shoot
     work "Twang!!!"
  end

  def run
      work "Clop clop clop clop!!!"
  end

  def cranky?
    if @options["count"] >= 3
      true
    else
      false
    end
  end

  def standing?
    @options["standing"]
  end

  def sleep
    standing? ? "NO!" : @options["count"] = 0
  end

  def laying?
    !standing?
  end

  def lay_down
    @options["standing"] = false
  end

  def stand_up
    @options["standing"] = true
  end

  def work(sound)
    @options["count"] += 1
    if cranky? || laying?
      "NO!"
    else
      sound
    end
  end
end
