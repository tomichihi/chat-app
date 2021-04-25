class CreateRoomUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :room_users do |t|
      t.references :room, foreign_key: true
      t.references :user, foreign_key: true
      has_many :room_users
      has_many :rooms, through: room_users
      has_many :messages
      t.timestamps
    end
  end
end
