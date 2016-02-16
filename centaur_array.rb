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
    work "Twang!!!"
  end

  def run
    work "Clop clop clop clop!!!"
  end

  def cranky?
    3 <= @options[COUNT]
  end

  def standing?
    @options[STANDING]
  end

  def sleep
    @options[COUNT] = 0
    "NO!" if standing?
  end

  def lay_down
    @options[STANDING] = false
  end

  def laying?
    !standing?
  end

  def stand_up
    @options[STANDING] = true
  end

  private

  def work(sound)
    @options[COUNT] +=1
    if @options[COUNT] >= 3 || laying?
      "NO!"
    else
      sound
    end
  end
end
