class Lead < ApplicationRecord

  scope :order_desc, -> {order(created_at: :desc)} #funcion Lambda ó funcion anónima (método)

  has_many :conversations, dependent: :destroy
  validates :email, :name, :phone, :status, :add_by, presence: true

end
