class Lead < ApplicationRecord
  validates :email, :name, :phone, :status, :add_by, presence: true
  validates :conversation, numericality: { only_integer: true, greater_than_or_equal_to: 0 }

end
