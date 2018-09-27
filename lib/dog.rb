require "pry"

class Dog
  attr_accessor :name, :breed, :id

  def initialize (name:, breed:, id: nil)
    @name = name
    @breed = breed
    @id = id
  end

  def self.create_table
    sql = <<-SQL
      CREATE TABLE dogs (
        id INTEGER PRIMARY KEY,
        name TEXT,
        breed TEXT
      );
    SQL
    DB[:conn].execute(sql)
  end

  def self.drop_table
    DB[:conn].execute("DROP TABLE IF EXISTS dogs;")
  end

  def self.new_from_db(row)
    id=row[0]
    name=row[1]
    breed=row[2]
    hash={:name => name, :breed => breed, :id => id}
    dog = Dog.new(hash)
  end

  def save

    
  end



end
