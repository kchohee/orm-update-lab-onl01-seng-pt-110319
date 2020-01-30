require_relative "../config/environment.rb"

class Student
  attr_accessor
  # attributes
  #   has a name and a grade
  #   has an id that defaults to `nil` on initialization
  def initialize
  end
  # .create_table
  #   creates the students table in the database
  def self.create_table
  end
  # .drop_table
  #   drops the students table from the database
  def self.drop_table
  end
  #save
  #   saves an instance of the Student class to the database and then sets the given students `id` attribute 
  
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
  
  #   updates a record if called on an object that is already persisted
  # .create
  #   creates a student with two attributes, name and grade, and saves it into the students table.
  # .new_from_db
  #   creates an instance with corresponding attribute values
  # .find_by_name
  #   returns an instance of student that matches the name from the DB
  # #update
  #   updates the record associated with a given instance