# frozen_string_literal: true

class DeviseCreateUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :users do |t|
      t.string :name,               null:false
      t.timestamps null: false
    end
  end
end
