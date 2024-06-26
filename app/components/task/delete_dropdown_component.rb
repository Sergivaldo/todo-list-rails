# frozen_string_literal: true

class Task::DeleteDropdownComponent < ViewComponent::Base
  def initialize(task:)
    @task = task
  end
end
