class CreateAppointments < ActiveRecord::Migration[5.1]
  def change
    create_table :appointments do |t|
      t.datetime :date
      t.string :street
      t.string :postal_code
      t.string :city
      t.string :country_code
      t.float :latitude
      t.float :longitude
      t.timestamps
    end
  end
end
