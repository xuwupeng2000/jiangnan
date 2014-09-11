class DropLeavingMessage < ActiveRecord::Migration
  def change
    drop_table :leaving_messages
  end
end
