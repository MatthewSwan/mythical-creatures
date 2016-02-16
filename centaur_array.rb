class Centaur
  NAME     = 0
  BREED    = 1
  COUNT    = 2
  STANDING = 3

  def initialize(name, breed)
    @options           = []
    @options[NAME    ] = name
    @options[BREED   ] = breed
    @options[COUNT   ] = 0
    @options[STANDING] = true
  end

  def name
    @options[NAME]
  end

  def breed
    @options[BREED]
  end

  def shoot
    @options[COUNT] += 1
    if @options[COUNT] >= 3 || !@options[STANDING]
      "NO!"
    else
      "Twang!!!"
    end
  end

  def run
    @options[COUNT] +=1
    if @options[COUNT] >= 3 || !@options[STANDING]
      "NO!"
    else
      "Clop clop clop clop!!!"
    end
  end

  def cranky?
    if @options[COUNT] < 3
      false
    else
      true
    end
  end

  def standing?
    @options[STANDING]
  end

  def sleep
    @options[COUNT] = 0
    if @options[STANDING]
      "NO!"
    end
  end

  def lay_down
    @options[STANDING] = false
  end

  def laying?
    !@options[STANDING]
  end

  def stand_up
    @options[STANDING] = true
  end
end
