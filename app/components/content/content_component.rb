# frozen_string_literal: true

class Content::ContentComponent < ViewComponent::Base
  def initialize(title:)
    @title = title
  end

end
