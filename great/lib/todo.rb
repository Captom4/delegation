class Todo
  
  attr_reader :description
  
  def initialize(description)
    @description = description
    @complete = false
  end
  
  def complete_to_string
    @complete == false ? "not complete" :"complete"
  end
end

