require "pry"

class Dog
  attr_accessor :name, :breed, :id

  def initialize (hash)
    binding.pry
    @name = name
    @breed = breed
  end

end
