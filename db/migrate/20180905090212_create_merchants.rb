class CreateMerchants < ActiveRecord::Migration[5.2]
  def change
    create_table :merchants do |t|
      t.text :company_name
      t.decimal :latitude
      t.decimal :longitude
      t.text :address

      t.timestamps
    end
  end
end
