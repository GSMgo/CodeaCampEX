class TasksView
	# Recuerda que la única responsabilidad de la vista es desplegar data al usuario

	def index(tasks)
    puts "Todo List"
    tasks.each do |task|
      puts "| #{task.id} | #{task.completed} | #{task.text} |"
    end
	end

  def create
    puts "Task has been added"
  end

  def delete
    puts "Task has been deleted"
  end

  def update
    puts "Task has been updated"
  end

	def error
    puts "There has been an error"
	end
end
