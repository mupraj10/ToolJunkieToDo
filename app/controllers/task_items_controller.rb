class TaskItemsController < ApplicationController
  before_action :set_task_list
  before_action :set_task_item, except: [:create]

  # POST /task_lists/:task_list_id/task_items
  def create
    @task_item = @task_list.task_items.create(task_item_params)
    redirect_to @task_list, sucess: "To Do created!"
  end

  def complete
    @task_item.update_attribute(:completed_at, Time.now)
    redirect_to @task_list, notice: "Todo completed!!"
  end

  def edit
    @task_item
  end

  def update
    @task_item.update(task_item_params)
    redirect_to @task_list
  end

  def destroy
    @task_item.destroy
    redirect_to @task_list
  end

  private

  def set_task_list
    @task_list = TaskList.find(params[:task_list_id])
  end

  # # find the correct task item
  def set_task_item
    @task_item = @task_list.task_items.find(params[:id])
  end

  def task_item_params
    params[:task_item].permit(:content, :deadline)
  end
end
