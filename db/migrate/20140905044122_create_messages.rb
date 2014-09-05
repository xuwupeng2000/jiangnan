class CreateMessages < ActiveRecord::Migration
  def change
    create_table :messages do |t|
      t.text :content
      t.text :title
      t.text :contact_email

      t.timestamps
    end
  end
end
