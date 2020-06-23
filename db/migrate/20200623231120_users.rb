class Users < ActiveRecord::Migration[5.1]
  def up
    create_table :users do |t|
      t.string :username
      t.string :password_digest #this makes it so our passwords are salted and hashed
    end
  end

  def down
    drop_table :users
  end
end
