require 'csv'

class ToDoList

  def initialize
    @list_hash = get_list_hash #hash where the list items will be saved like: {1: ["X", "String or the list item"]}
    @list_hash_completed = get_list_hash_numbers
    menu(ARGV)
  end

  def menu(argv)
    case argv[0]

      when "add"
        argv.shift
        @argument = argv.join(" ")
        add
      when "delete"
        argv.shift
        @argument = argv.join(" ")
          delete
      when "complete"
        argv.shift
        @argument = argv.join(" ")
          complete
      when "index"
        index
    end
  end

  def create_csv
    CSV.open("todo.csv", "wb") do |csv|
    end
  end

  #this method displays on the console, all the information of the list (saved in the csv)
  def index
    puts "To do list: \n"
    CSV.foreach("todo.csv") do |row|
      puts "#{row[1]} | #{row[0]}. #{row[2]}"
    end
  end

  # This method adds a new item to de list 
  def add
    @list_hash[get_last_number] = @argument
    @list_hash_completed[get_last_number-1]  = "[ ]"
    write_csv # METHOD to update csv list
    puts "You have added -#{@argument}- to the list \n"
    order_numbers
    index # METHOD to display list on console
  end

  def delete
    if @list_hash.keys.include?(@argument)
      temp = @list_hash[@argument.to_s].to_s
      @list_hash.delete_if do |key1, value| 
        key1 == @argument.to_s
      end
      @list_hash_completed.delete_if do |key2, value2|
        key2 == @argument.to_s
      end 
      write_csv # METHOD to update csv list
      puts "You have deleted task:- #{@argument} - from the list \n"
      order_numbers
      index # METHOD to display list on console
    else
      puts "Task: #{@argument} doesn't exist"
    end
  end

  def complete
    if @list_hash.keys.include?(@argument) || @list_hash.values.include?(@argument)
      # if the task is passed
      if @list_hash.values.include?(@argument.to_s)
        key = @list_hash.key(@argument.to_s)
        @list_hash_completed[key] = "[X]"
        write_csv # METHOD to update csv list
        puts "You have completed task -#{@argument}-\n"
        order_numbers
        index # METHOD to display list on console
      # if the number of the task is passed
      elsif @list_hash_completed.keys.include?(@argument.to_s)
        @list_hash_completed[@argument.to_s]= "[X]"
        write_csv # METHOD to update csv list
        puts "You have completed task -#{@argument}-\n"
        order_numbers
        index # METHOD to display list on console
      # if no valid input is detected
      else
        puts "Not a valid number task or task"
      end
    else
      puts "Task: #{@argument} doesn't exist"
    end
  end

  # This method re-writes the csv with the list_hash information
  def write_csv
      CSV.open("todo.csv", "wb") do |csv|
        @list_hash.each do |key,value|
          csv << [key, @list_hash_completed[key], value]
        end
      end
  end

  def get_list_hash
    temporal_arr_list = []
    hash = {}
    CSV.foreach("todo.csv") do |row|
      temporal_arr_list << [row[0],row[1],row[2]]
    end
    temporal_arr_list.each do |x|
      hash[x[0]] = x[2]
    end
    hash
  end


  def get_list_hash_numbers
    temporal_arr_list = []
    hash = {}
    CSV.foreach("todo.csv") do |row|
      temporal_arr_list << [row[0],row[1],row[2]]
    end
    temporal_arr_list.each do |x|
      hash[x[0]] = x[1]
    end
    hash
  end

  def get_last_number
    @list_hash.length + 1
  end

  def order_numbers
    contador = 1
    list_hash_temp = {}
    list_hash_completed_temp = {}
    @list_hash.each do |key, value|
      list_hash_temp[contador.to_s] = value.to_s
      contador += 1
    end
    contador = 1
    @list_hash_completed.each do |key, value|
      list_hash_completed_temp[contador.to_s] = value.to_s
      contador += 1
    end
    @list_hash = list_hash_temp
    @list_hash_completed = list_hash_completed_temp
    write_csv
  end
#end de clase
end

a = ToDoList.new



