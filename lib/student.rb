class Student

  # Remember, you can access your database connection anywhere in this class
  #  with DB[:conn]
  attr_accessor :name, :grade
  attr_reader :id

  def self.create_table
    #it creates the table in the db if it doesn't already exist
    sql = <<-SQL
      CREATE TABLE IF NOT EXISTS students (
        id INTEGER PRIMARY KEY,
        name TEXT,
        grade TEXT
      )
      SQL
    DB[:conn].execute(sql)  
  end

  def save
    #it saves an individual student to the database
  end

  def create
    #it creates a new Student and saves to database
  end

end
