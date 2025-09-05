class RemoveColumnsFromWaitings < ActiveRecord::Migration[7.2]
  def change
    remove_column :waitings, :user_id, :bigint
    remove_column :waitings, :status, :string
  end
end
