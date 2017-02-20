class CreateGameplans < ActiveRecord::Migration[5.0]
  def change
    create_table :gameplans do |t|
      t.string :name
      t.belongs_to :user, foreign_key: true
      t.integer :event_id

      t.timestamps
    end
  end
end
