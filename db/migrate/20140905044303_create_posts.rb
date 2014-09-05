class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.text :content
      t.text :title
      t.date :related_date
      t.text :mood

      t.timestamps
    end
  end
end
