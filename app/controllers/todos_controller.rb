# todos_controller.rb
class TodosController < ApplicationController
  def index
   # render plain:"Hello, this is /todos! #{DateTime.now.to_s(:short)}"
    render plain: Todo.order(:due_date).map { |todo| todo.todo_text}.join("\n")
  end
end
