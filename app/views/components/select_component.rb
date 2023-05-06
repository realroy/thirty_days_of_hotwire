# frozen_string_literal: true

class SelectComponent < ViewComponent::Base
  def initialize(options:, text_field_name:)
    @options = options
    @text_field_name = text_field_name

    super
  end

end
