class CreatWagons < ActiveRecord::Migration[5.1]
  def change
    create_table :wagons do |t|
      t.integer :number
      t.string :type
      t.integer :low_place, default: 0
      t.integer :top_place, default: 0
      t.integer :side_low_place, default: 0
      t.integer :side_top_place, default: 0
      t.integer :sit_place, default: 0

      t.timestamps
    end
  end

