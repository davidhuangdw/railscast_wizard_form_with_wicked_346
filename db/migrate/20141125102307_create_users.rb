class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :email
      t.string :password_digest
      t.string :name
      t.string :twitter_username
      t.string :github_username
      t.string :website
      t.string :date_of_birth
      t.text :bio

      t.timestamps
    end
  end
end
