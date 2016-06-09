class TasksController
  def initialize(args)
    @view = TasksView.new
  end

  def index
    # TIP: Aquí debes de llamar al método del mismo nombre de @view
    tasks = Task.all 
    @view.index(tasks)
  end

  def add(text)
    Task.create(text: text, competed: false)
    @view.create
  end

  def delete(id)
    Task.delete(id)
    @view.delete
  end

  def complete(id)
    a = Task.find(id)
    a.completed = true
    @view.update
  end
end
