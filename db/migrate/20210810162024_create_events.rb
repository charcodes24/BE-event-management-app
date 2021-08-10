class CreateEvents < ActiveRecord::Migration[5.2]
  def change
    create_table :events do |t|
      t.string :name
      t.datetime :date
      t.integer :priority
      t.boolean :completed
      t.belongs_to :category
    end
  end
end
