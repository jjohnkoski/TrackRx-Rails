class CreateClassifications < ActiveRecord::Migration[5.2]
  def change
    create_table :classifications do |t|
      t.references :medicine, foreign_key: true
      t.references :type, foreign_key: true

      t.timestamps
    end
  end
end
