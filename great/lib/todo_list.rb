require "todo"

class TodoList
  def initialize
    @todos = []
  end

  def add(description, todo_class = Todo)
    @todos << todo_class.new(description)
  end

  def get(index)
    all[index]
  end

  def to_string
    output = ""
    
    @todos.each_with_index do |todo, index|
     output += "#{index + 1}. #{todo.description} #{todo.complete_to_string}"
    end
    
    output
  end
  
  private

  def all
    @todos
  end
end
