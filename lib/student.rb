require_relative "../config/environment.rb"

class Student
  attr_accessor :name, :grade, :id
  # attributes
  #   has a name and a grade
  #   has an id that defaults to `nil` on initialization
  def initialize(name, grade, id=nil)
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
  #   updates a record if called on an object that is already persisted
  def save
  end
  
  # .create
  #   creates a student with two attributes, name and grade, and saves it into the students table.
  def self.create
  end
  
  # .new_from_db
  #   creates an instance with corresponding attribute values
  def self.new_from_db
  end
  
  # .find_by_name
  #   returns an instance of student that matches the name from the DB
  def self.find_by_name
  end
  
  # #update
  #   updates the record associated with a given instance
  def update
  end
end