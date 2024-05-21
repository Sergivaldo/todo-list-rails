# frozen_string_literal: true

class Icon::IconsComponent < ViewComponent::Base
  def initialize(icon:, size: 16)
    @icon = icon
    @size = size
  end
end
