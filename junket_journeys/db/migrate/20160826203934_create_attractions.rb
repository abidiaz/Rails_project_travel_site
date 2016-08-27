class CreateAttractions < ActiveRecord::Migration[5.0]
  def change
    create_table :attractions do |t|
      t.string :name
      t.string :address
      t.string :contact_info
      t.references :city, foreign_key: true

      t.timestamps
    end
  end
end
