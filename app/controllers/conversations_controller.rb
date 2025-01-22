class ConversationsController < ApplicationController
  before_action :set_lead

  def index
    @convesations = Conversation.order_desc
  end

  def new
    @conversatios = Conversation.new
  end

  def create
    @conversation = @lead.conversations.build(conversation_params)
    if @conversation.save
      redirect_to @lead, notice: 'La conversación fue agregada exitosamente.'
    else
      render :new
    end

  end
end


private


def set_lead
  @lead = Lead.find(params[:lead_id])
end


def conversation_params
  params.require(:conversation).permit(:details)
end
