class Person
  AGE_BORDER = 27

  # constructor
  def initialize(age)
    @age = age
  end

  # predicate
  def young?
    @age < AGE_BORDER
  end
end