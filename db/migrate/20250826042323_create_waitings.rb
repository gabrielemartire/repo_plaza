class CreateWaitings < ActiveRecord::Migration[7.2]
  def change
    create_table :waitings do |t|
      t.references :user, null: false, foreign_key: true
      t.string :status
      t.string :email
      t.string :name
      t.string :discovered

      t.timestamps
    end
  end
end
