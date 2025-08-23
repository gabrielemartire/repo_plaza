class CreateUsers < ActiveRecord::Migration[7.2]
  def change
    create_table :users do |t|
      t.string :provider
      t.string :uid
      t.string :nickname
      t.string :name
      t.string :email
      t.string :token
      t.datetime :token_expires_at

      t.timestamps
    end
  end
end
