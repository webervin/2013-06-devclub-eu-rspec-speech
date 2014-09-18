require 'person'

class Highlander < Person
  MID_AGE_BORDER = 270

  def young?
    @age < MID_AGE_BORDER
  end
end