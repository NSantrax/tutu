class AddNameAndPassportNumberToTickets < ActiveRecord::Migration[5.1]
  def change
    add_column :tickets, :passport_number, :integer
    add_column :tickets, :first_name, :string
    add_column :tickets, :second_name, :string
    add_column :tickets, :middle_name, :string
  end
end
