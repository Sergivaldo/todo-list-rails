# frozen_string_literal: true

class Icon::IconsComponent < ViewComponent::Base
  def initialize(icon:, size: 16, stroke: 2)
    @icon = icon
    @size = size
    @stroke = stroke
  end
end
