class AddFieldToMedicines < ActiveRecord::Migration[5.2]
  def change
    add_column :medicines, :rx_number2, :integer
  end
end
