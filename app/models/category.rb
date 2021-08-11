class Category < ActiveRecord::Base
  has_many :events

  def self.render_categories
    all.map do |category|
      {
        id: category.id,
        name: category.name
      }
    end
  end
end

