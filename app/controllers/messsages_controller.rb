class MesssagesController < ApplicationController
  def new
    @message = Message.all
  end

  def create
    Message.create(task_params)
  end

  private

  def task_params
    params.require(:message).permit(:title, :content)
  end
end
