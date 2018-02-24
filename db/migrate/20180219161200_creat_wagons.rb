class CreatWagons < ActiveRecord::Migration[5.1]
  def change
    create_table :wagons do |t|
      t.integer :number
      t.string :wagon_type
      t.integer :low_place, default: 0
      t.integer :top_place, default: 0

      t.timestamps
    end
  end
end
