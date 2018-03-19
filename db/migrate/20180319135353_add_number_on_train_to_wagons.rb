class AddNumberOnTrainToWagons < ActiveRecord::Migration[5.1]
  def change
    add_column :wagons, :number_on_train,  :integer, default: 0
  end
end
