class CreateConversations < ActiveRecord::Migration[7.1]
  def change
    create_table :conversations do |t|
      t.text :detail
      t.references :lead, null: false, foreign_key: true

      t.timestamps
    end
  end
end
