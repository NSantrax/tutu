class AddSortWagonsToTrains < ActiveRecord::Migration[5.1]
  def change
    add_column :trains, :sort_wagons, :boolean, default: true
  end
end
