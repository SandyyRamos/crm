class Conversation < ApplicationRecord
  belongs_to :lead

  scope :order_desc, -> {order(created_at: :desc)}
  validates :detail, presence: { message: "No puede estar vacío" }
end
