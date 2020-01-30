require_relative "../config/environment.rb"

class Student
  attr_accessor :name, :grade, :id
  # attributes
  #   has a name and a grade
  #   has an id that defaults to `nil` on initialization
  def initialize(name, grade, id=nil)
    @name = name
    @grade = grade
    @id = id
  end

  # .create_table
  #   creates the students table in the database
  def self.create_table
    sql = <<- SQL
      CREATE TABLE IF NOT EXIST students(
        id INTEGER PRIMARY KEY,
        name TEXT,
        grade INTEGER
        )
      SQL
      DB[:conn].execute(sql)
  end

  # .drop_table
  #   drops the students table from the database
  def self.drop_table
    sql = <<- SQL
      DROP TABLE students
      SQL
      DB[:conn].execute(sql)
  end

  #save
  #   saves an instance of the Student class to the database and then sets the given students `id` attribute
  #   updates a record if called on an object that is already persisted
  def save
    if self.id
      self.update
    else
      sql = <<-SQL
        INSERT INTO students (name, grade)
        VALUES (?, ?)
      SQL
      DB[:conn].execute(sql, self.name, self.grade)
      @id = DB[:conn].execute("SELECT last_insert_rowid() FROM students")[0][0]
    end
  end
  
  # .create
  #   creates a student with two attributes, name and grade, and saves it into the students table.
  def self.create(name:, grade:)
    student = Student.new(name, grade)
    student.save
    student
  end
  
  # .new_from_db
  #   creates an instance with corresponding attribute values
  def self.new_from_db(row)
    
  end
  
  # .find_by_name
  #   returns an instance of student that matches the name from the DB
  def self.find_by_name(name)
    sql = "SELECT * FROM students WHERE name = ?"
    result = DB[:conn].execute(sql, name)[0]
    Student.new(result[0], result[1], result[2])
  end
  
  # #update
  #   updates the record associated with a given instance
  def update
    def update
    sql = "UPDATE songs SET name = ?, album = ? WHERE id = ?"
    DB[:conn].execute(sql, self.name, self.grade, self.id)
  end
end