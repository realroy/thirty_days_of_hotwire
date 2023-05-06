# frozen_string_literal: true

class SelectOptionComponent < ViewComponent::Base
  def initialize(value: , label:)
    @value = value
    @label = label
    super
  end

end
