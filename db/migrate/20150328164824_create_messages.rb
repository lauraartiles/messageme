class CreateMessages < ActiveRecord::Migration
  def change
    create_table :messages do |t|
      t.string :message
      t.integer :user_id
      t.integer :message_from

      t.timestamps
    end
  end
end
