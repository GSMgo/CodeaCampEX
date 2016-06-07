require 'sqlite3'

class Chef

  def self.create_table
    Chef.db.execute(
      <<-SQL
        CREATE TABLE chefs (
          id INTEGER PRIMARY KEY AUTOINCREMENT,
          first_name VARCHAR(64) NOT NULL,
          last_name VARCHAR(64) NOT NULL,
          birthday DATE NOT NULL,
          email VARCHAR(64) NOT NULL,
          phone VARCHAR(64) NOT NULL,
          created_at DATETIME NOT NULL,
          updated_at DATETIME NOT NULL
        );
      SQL
    )
  end

  def self.seed
    Chef.db.execute(
      <<-SQL
        INSERT INTO chefs
          (first_name, last_name, birthday, email, phone, created_at, updated_at)
        VALUES
          ('Ferran', 'Adriá', '1985-02-09', 'ferran.adria@elbulli.com', '42381093238', DATETIME('now'), DATETIME('now'));
          SQL
    )
    Chef.db.execute(
      <<-SQL
        INSERT INTO chefs
          (first_name, last_name, birthday, email, phone, created_at, updated_at)
        VALUES
          ('María', 'Romero', '1990-03-20', 'mariaromero@fake.com', '4556985214', DATETIME('now'), DATETIME('now'));
          SQL
    )
    Chef.db.execute(
      <<-SQL
        INSERT INTO chefs
          (first_name, last_name, birthday, email, phone, created_at, updated_at)
        VALUES
          ('Louis', 'Smith', '1995-10-03', 'lousmith@fake.com', '55698723546', DATETIME('now'), DATETIME('now'));
        -- Añade aquí más registros
      SQL
    )
  end

  def initialize(first_name,last_name,birthday,email,phone,created_at,updated_at)
    @first_name = first_name
    @last_name = last_name
    @birthday = birthday
    @email = email
    @phone = phone
    @created_at =created_at
    @updated_at = updated_at
  end

  def self.all
    Chef.db.execute(
      <<-SQL
        SELECT * 
        FROM chefs
      SQL
      )
  end

  def self.where(column, value)
    Chef.db.execute(
      # <<-SQL
        "SELECT * FROM chefs WHERE #{column}= ?", value
      # SQL
      )
  end

  def self.new(first_name,last_name,birthday,email,phone,created_at,updated_at)
    Chef.db.execute(
     # <<-SQL
        "INSERT INTO chefs(first_name, last_name, birthday, email, phone, created_at, updated_at)
        VALUES ('#{first_name}', '#{last_name}', '#{birthday}', '#{email}', '#{phone}', DATETIME('now'), DATETIME('now'))"
        #SQL
      )
  end

  def self.delete(column, value)
    Chef.db.execute(
      #<<-SQL
        "DELETE FROM chefs WHERE #{column} = ?", value
      #SQL
      )
  end


  private

  def self.db
    @@db ||= SQLite3::Database.new("chefs.db")
  end

end