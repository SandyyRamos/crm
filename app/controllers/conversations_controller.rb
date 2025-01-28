class ConversationsController < ApplicationController

  def create
    @lead = Lead.find(params[:lead_id]) # Busca un lead por su id extrae de la url un id
    @conversation = @lead.conversations.build(conversation_params) # Agrega el lead id al modelo conversation y lo que viene en el params (setea)

    # @conversation = Conversation.new(conversations_params)
    # @conversation.lead_id = @lead.id
    if @conversation.save
      @lead.conversation += 1
      @lead.save
      redirect_to @lead, notice: 'La conversación fue agregada exitosamente.'
    else
      render :new, status: :unprocessable_entity
    end
  end
end


private

def conversation_params
  params.require(:conversation).permit(:detail)
end
