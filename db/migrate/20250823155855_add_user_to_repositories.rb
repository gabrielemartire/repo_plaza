class AddUserToRepositories < ActiveRecord::Migration[7.2]
  def change
    add_reference :repositories, :user, null: false, foreign_key: true
  end
end
