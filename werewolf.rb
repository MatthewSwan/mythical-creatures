class Werewolf
  def initialize(name, location = "London", form = 'human')
    @name = name
    @location = location
    @form = form
  end

  def name
    @name
  end

  def location
    @location
  end

  def human?
    @form = 'human'
  end

  def change!
    if @form == 'human'
      @form = 'werewolf'
    else
      @form = 'human'
    end
  end


  def wolf?
    @form = 'werewolf'
  end
end
