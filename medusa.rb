class Medusa
  def initialize(name)
    @name = name
    @statues = []
  end

  def name
    @name
  end

  def statues
    @statues
  end

  def stare(victim)
    statues << victim
    if statues.count > 3
      statues.shift.get_unstoned!
    end
    victim.get_stoned!
  end
end

class Person
  def initialize(name)
    @name = name
    @stoned = false
    @unstoned = true
  end

  def name
    @name
  end

  def stoned?
    @stoned
  end

  def get_stoned!
    @stoned = true
    @unstoned = false
  end

  def unstoned?
    @unstoned
  end

  def get_unstoned!
    @stoned = false
    @unstoned = true
  end
end
