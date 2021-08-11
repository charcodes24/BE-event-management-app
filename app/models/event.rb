class Event < ActiveRecord::Base
  belongs_to :category

  def self.render_events
    Event.all.map do |event|
      {
        id: event.id,
        name: event.name,
        date: event.date,
        priority: event.priority,
        completed: event.completed,
        category: event.category.name
      }
    end
  end

  def self.sort_by_priority
    Event.all.order(priority: :desc)
  end
end
