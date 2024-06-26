# frozen_string_literal: true

class Task::MoveToColumnDropDownComponent < ViewComponent::Base
  def initialize(task:)
    @task = task
  end
end
