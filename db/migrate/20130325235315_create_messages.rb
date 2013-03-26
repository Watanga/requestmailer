class CreateMessages < ActiveRecord::Migration
  def change
    create_table :messages do |t|
      t.string :name
      t.string :email
      t.string :country
      t.date :checkin
      t.date :checkout
      t.integer :guests
      t.integer :rooms
      t.string :hood
      t.text :comments

      t.timestamps
    end
  end
end
