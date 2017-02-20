class CreateGameplanUsers < ActiveRecord::Migration[5.0]
  def change
    create_table :gameplan_users do |t|
      t.belongs_to :gameplan, foreign_key: true
      t.belongs_to :user, foreign_key: true

      t.timestamps
    end
  end
end
