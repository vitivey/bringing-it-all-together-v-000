require "pry"

class Dog
  attr_accessor :name, :breed, :id

  def initialize (name:, breed:)
    binding.pry
    @name = name
    @breed = breed
  end

end
