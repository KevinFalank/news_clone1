class CreateTables < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string :title
      t.string :url
      t.integer :user_id
      t.timestamps
    end

    create_table :comments do |t|
      t.datetime :date, :default => Time.now
      t.integer :post_id
      t.integer :user_id
      t.string :text, :limit => 500
      t.timestamps
    end

    create_table :users do |t|
      t.string :name
      t.string :email
      t.string :password
      t.timestamps
    end

    add_index(:posts, :user_id)
    add_index(:comments, :post_id)
    add_index(:comments, :user_id)

  end
end
