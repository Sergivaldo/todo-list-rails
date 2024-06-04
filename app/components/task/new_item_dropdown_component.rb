# frozen_string_literal: true

class Task::NewItemDropdownComponent < ViewComponent::Base
  def initialize(task_status:)
    @task_status = task_status
  end
end
