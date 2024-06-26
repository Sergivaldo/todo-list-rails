# frozen_string_literal: true

class Task::TaskListComponent < ViewComponent::Base
  def initialize(title:, tasks:, title_style:, task_status:)
    @title = title
    @tasks = tasks
    @title_style = title_style
    @task_status = task_status
    @id = task_status
  end

end
