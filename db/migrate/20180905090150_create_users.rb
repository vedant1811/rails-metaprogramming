class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.text :name
      t.decimal :latitude
      t.decimal :longitude
      t.text :home_address

      t.timestamps
    end
  end
end
