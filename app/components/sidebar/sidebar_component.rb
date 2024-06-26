# frozen_string_literal: true

class Sidebar::SidebarComponent < ViewComponent::Base
  def initialize(index:)
    @index = index
  end
end
