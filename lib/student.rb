require_relative "../config/environment.rb"

class Student
  attr_accessor
  def initialize
  end
  def self.create_table
  end
  def self.drop_table
  end
  def save
  end
  def self.create
  end
  def self.new_from_db
  end
  def self.find_by_name
  end
  def update
  end
end


  # attributes
  #   has a name and a grade (FAILED - 1)
  #   has an id that defaults to `nil` on initialization (FAILED - 2)
  # .create_table
  #   creates the students table in the database (FAILED - 3)
  # .drop_table
  #   drops the students table from the database (FAILED - 4)
  # #save
  #   saves an instance of the Student class to the database and then sets the given students `id` attribute 
  #   updates a record if called on an object that is already persisted
  # .create
  #   creates a student with two attributes, name and grade, and saves it into the students table. (FAILED - 7)
  # .new_from_db
  #   creates an instance with corresponding attribute values (FAILED - 8)
  # .find_by_name
  #   returns an instance of student that matches the name from the DB (FAILED - 9)
  # #update
  #   updates the record associated with a given instance (FAILED - 10)