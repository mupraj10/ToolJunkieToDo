# class TaskItemsController < ApplicationController
#   before_action :set_task_list
#   before_action :set_task_item, except: [:create]
#   #   need those to do before any action happens

#   def index
#     @task_items = TaskList.find(params[:id]).task_items
#   end

#   #   creating a new item under the task
#   def create
#     @task_item = @task_list.task_items.create(task_item_params)
#     # @task_item = @task_list.task_items.create(task_item_params)
#     redirect_to task_lists_url
#   end

#   def destroy
#     # @task_item = @task_list.task_items.find(params[:id])
#     @task_item = current_user.task_lists.task_items.find(params[:id])
#     if @task_item_destroy
#       flash[:sucess] = @task_item + "was deleted!"
#     else
#       flash[:error] = "Item could not be deleted!"
#     end
#     redirect_to task_lists_url
#   end

#   def complete
#     @task_item.update_attribute(:completed_at, Time.now)
#     redirect_to @task_list, notice: "Item completed!!"
#   end

#   #   private methods so we do before load I assume?
#   private

#   #   find the correct task list
#   def set_task_list
#     @task_list = TaskList.find(params[:task_list_id])
#   end

#   # find the correct task item
#   def set_task_item
#     # @task_item = @task_list.task_items.find(params[:id])
#     @task_item = @current.user.task_list.task_items.find(params[:id])
#   end

#   # find the correct item
#   def task_item_params
#     params[:task_item].permit(:content)
#   end
# end

class TaskItemsController < ApplicationController
  before_action :set_task_list
  before_action :set_task_item, except: [:create]

  # POST /task_lists/:task_list_id/task_items
  def create
    @task_item = @task_list.task_items.create(task_item_params)
    redirect_to task_lists_url, sucess: "To Do created!"
  end

  private

  def set_task_list
    @task_list = TaskList.includes(:task_items)
      .where(user: current_user)
      .find(params[:task_list_id])
  end

  # find the correct task item
  def set_task_item
    @task_item = @task_list.task_items.find(params[:id])
    # @task_item = @current.user.task_list.task_items.find(params[:id])
  end

  def task_item_params
    params[:task_item].permit(:content)
  end
end
