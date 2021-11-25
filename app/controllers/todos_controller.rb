# todos_controller.rb
class TodosController < ApplicationController
  skip_before_action :verify_authenticity_token
  def index
   # render plain:"Hello, this is /todos! #{DateTime.now.to_s(:short)}"
     render plain: Todo.order(:due_date).map { |todo| todo.to_p}.join("\n")
  end

  def show
    id = params[:id]
    todo = Todo.find(id)
    render plain: todo.to_p
  end

  def create
    todo_text = params[:todo_text]
    due_date = DateTime.parse(params[:due_date])
    new_todo = Todo.create!(todo_text:todo_text, due_date:due_date, completed: false,)
    response_text ="Hey your new todo created with id #{new_todo.id}"
    render plain: response_text
  end

  def update

    id=params[:id]
    completed = params[:completed]
    todo=Todo.find(id)
    todo.completed= completed
    todo.save!
    render plain: "Updated todo complete status to #{completed}"
  end
end
