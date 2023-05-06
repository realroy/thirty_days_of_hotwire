# frozen_string_literal: true

class ChipComponent < ViewComponent::Base
  def initialize(text:, close_btn_data_action: '')
    @text = text
    @close_btn_data_action = close_btn_data_action
    super
  end

end
