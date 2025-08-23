class CreateRepositories < ActiveRecord::Migration[7.2]
  def change
    create_table :repositories do |t|
      t.string :name
      t.string :full_name
      t.string :url
      t.datetime :last_commit_at
      t.boolean :archived

      t.timestamps
    end
  end
end
