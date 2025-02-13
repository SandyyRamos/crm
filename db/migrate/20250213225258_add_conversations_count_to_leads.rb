class AddConversationsCountToLeads < ActiveRecord::Migration[7.1]
  def change
    add_column :leads, :conversations_count, :integer, default: 0, null: false
  end
end
