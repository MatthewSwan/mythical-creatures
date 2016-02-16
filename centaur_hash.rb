class Centaur
  def initialize(name, breed)
    @options = {"name" => name, "breed" => breed, "count" => 0,
                "standing" => true, "laying" => false}
  end

  def name
    @options["name"]
  end

  def breed
    @options["breed"]
  end

  def shoot
    @options["count"] += 1
    if @options["count"] >= 3 || laying?
      "NO!"
    else
      "Twang!!!"
    end
  end

  def run
    @options["count"] += 1
    if @options["count"] >= 3 || laying?
      "NO!"
    else
      "Clop clop clop clop!!!"
    end
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
    @options["count"] = 0
    if @options["standing"]
      "NO!"
    end
  end

  def laying?
    @options["laying"]
  end

  def lay_down
    @options["standing"] = false
    @options["laying"] = true
  end

  def stand_up
    @options["standing"] = true
    @options["laying"] = false
  end
end
