class Conversation < ApplicationRecord
  belongs_to :lead, counter_cache: true # siempre tiene que ser belongs to 

  scope :order_desc, -> {order(created_at: :desc)}
  validates :detail, presence: { message: "No puede estar vacío" }
end
