class MultiSelectController < ApplicationController
  def index
    @technologies = [
      Technology.new(id: 1, name: 'Rails'),
      Technology.new(id: 2, name: 'Ruby'),
      Technology.new(id: 3, name: 'Hotwire'),
      Technology.new(id: 4, name: 'Stimulus'),
      Technology.new(id: 5, name: 'Tailwind'),
    ]
  end

  def select_technologies
    @technologies = [
      Technology.new(id: 1, name: 'Rails'),
      Technology.new(id: 2, name: 'Ruby'),
      Technology.new(id: 3, name: 'Hotwire'),
      Technology.new(id: 4, name: 'Stimulus'),
      Technology.new(id: 5, name: 'Tailwind'),
    ]

    respond_to do |format|
      format.turbo_stream
    end
  end
end
