class CreateChats < ActiveRecord::Migration[5.0]
  def change
    create_table :chats do |t|
      t.text :message
      t.belongs_to :gameplan, foreign_key: true
      t.belongs_to :user, foreign_key: true

      t.timestamps
    end
  end
end
