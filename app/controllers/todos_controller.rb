class TodosController < ApplicationController
  before_action :authenticate_user!
  before_action :progress
  def index
    @todos = current_user.todos
  end

  def update
    @todo=Todo.find(params[:id])
    @todo.status = !@todo.status
    @todo.save
    redirect_to todos_index_path
  end

  def show
      @todo=Todo.find(params[:id])
      @todos= Todo.where(task: @todo.task, status: true)
  end

private
def progress
  @todos_count = current_user.todos.where(status: true).count
  @all_todos = current_user.todos.count
end

end
