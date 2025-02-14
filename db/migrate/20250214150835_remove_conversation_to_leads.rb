class RemoveConversationToLeads < ActiveRecord::Migration[7.1]
  def change
    remove_column :leads, :conversation, :integer
  end
end
