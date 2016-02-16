class Wizard
  def initialize(name, bearded: true)
    @name = name
    @bearded = bearded
    @count = 0
  end

  def name
    @name
  end

  def bearded?
    @bearded
  end

  def incantation(message)
    "sudo #{message}"
  end

  def rested?
    @count < 3
  end

  def cast
    @count += 1
    if rested?
      true
    else
      false
    end
    "MAGIC MISSILE!"
  end
end
