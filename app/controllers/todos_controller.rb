class TodosController < ApplicationController

  def index
  end

  def new
    @todo = Todo.new
  end

  def create
    @todo = Todo.create!(todo_params)
  end

  private

    def todo_params
      params.require(:todo).permit(:title)
    end

end
