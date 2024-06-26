# frozen_string_literal: true

class Container::ContainerComponent < ViewComponent::Base
  def initialize(sb_index:)
    @sb_index = sb_index
  end
end
