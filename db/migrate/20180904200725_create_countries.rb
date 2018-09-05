class CreateCountries < ActiveRecord::Migration[5.2]
  def change
    create_table :countries do |t|
      t.text :name, null: false
      t.text :code, null: false

      t.timestamps
    end
  end
end
