class FicRepositoryColumns < ActiveRecord::Migration[7.2]
  def change
    rename_column :repositories, :name, :title
    rename_column :repositories, :full_name, :description
  end
end
