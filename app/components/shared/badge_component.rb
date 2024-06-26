# frozen_string_literal: true

class Shared::BadgeComponent < ViewComponent::Base
  def initialize(text:, style:)
    @text = text
    @style = style
  end

end
