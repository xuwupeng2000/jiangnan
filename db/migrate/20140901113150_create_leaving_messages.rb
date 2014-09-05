class CreateLeavingMessages < ActiveRecord::Migration
  def change
    create_table :leaving_messages do |t|

      t.timestamps
    end
  end
end
