class UpdateRepositoryModel < ActiveRecord::Migration[7.2]
  def change
    change_column_null :repositories, :user_id, false
  end
end
