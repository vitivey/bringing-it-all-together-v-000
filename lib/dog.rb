require "pry"

class Dog
  attr_accessor :name, :breed, :id

  def initialize (name:, breed:, id: nil)
    self.name = name
    self.breed = breed
    self.id = id
  end



end
