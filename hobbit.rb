class Hobbit
  def initialize(name, disposition = "homebody", gramps = true)
    @name = name
    @disposition = disposition
    @age = 0
    @gramps = gramps
  end

  def name
    @name
  end

  def disposition
    @disposition
  end

  def age
    @age
  end

  def celebrate_birthday
    @age += 1
  end

  def adult?
    if @age < 33
      @gramps == false
    else
      @gramps == true
    end
  end

  def old?
    true
  end

  def has_ring?
    if @name == "Frodo"
      true
    else
      false
    end
  end

  def is_short?
    true
  end
end
