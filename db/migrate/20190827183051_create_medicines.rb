class CreateMedicines < ActiveRecord::Migration[5.2]
  def change
    create_table :medicines do |t|
      t.string :name
      t.string :dose
      t.integer :rx_number

      t.timestamps
    end
  end
end
