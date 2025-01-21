class Lead < ApplicationRecord

  scope :order_desc, -> {order(created_at: :desc)} #funcion Lambda ó funcion anónima (método)

  validates :email, :name, :phone, :status, :add_by, presence: true
  validates :conversation, numericality: { only_integer: true, greater_than_or_equal_to: 0 }

end
