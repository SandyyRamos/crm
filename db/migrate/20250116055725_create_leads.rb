class CreateLeads < ActiveRecord::Migration[7.1]
  def change
    create_table :leads do |t|
      t.string :email
      t.string :name
      t.string :phone
      t.string :status
      t.date :date
      t.string :add_by
      t.integer :conversation

      t.timestamps
    end
  end
end
