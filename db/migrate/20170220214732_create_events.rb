class CreateEvents < ActiveRecord::Migration[5.0]
  def change
    create_table :events do |t|
      t.belongs_to :user, foreign_key: true
      t.string :name
      t.string :picture
      t.datetime :date_time
      t.datetime :rsvp_date_time
      t.string :country
      t.string :state
      t.string :city
      t.string :address
      t.string :phone_no
      t.float :latitude
      t.float :longitude

      t.timestamps
    end
  end
end
