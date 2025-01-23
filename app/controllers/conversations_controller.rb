class ConversationsController < ApplicationController

  def create
    @lead = Lead.find(params[:lead_id])
    @conversation = @lead.conversations.build(conversation_params)
    if @conversation.save
      redirect_to @lead, notice: 'La conversación fue agregada exitosamente.'
    else
      render :new
    end
  end
end


private

def conversation_params
  params.require(:conversation).permit(:detail)
end
