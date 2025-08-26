class RemoveRepositoryOwnerColumn < ActiveRecord::Migration[7.2]
  def change
    remove_column :repositories, :user_id
  end
end
