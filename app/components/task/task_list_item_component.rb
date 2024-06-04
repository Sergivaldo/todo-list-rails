# frozen_string_literal: true

class Task::TaskListItemComponent < ViewComponent::Base
  def initialize(task:)
    @task = task
  end
end
