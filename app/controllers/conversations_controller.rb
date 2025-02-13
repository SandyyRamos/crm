class ConversationsController < ApplicationController

  def create
    @lead = Lead.find(params[:lead_id]) # Busca un lead por su id extrae de la url un id
    @conversation = @lead.conversations.build(conversation_params) # Agrega el lead id al modelo conversation y lo que viene en el params (setea)

    # @conversation = Conversation.new(conversations_params)
    # @conversation.lead_id = @lead.id
    if @conversation.save
      # @lead.update_column(:conversation, @lead.conversations.count) # Actualiza el campo 'conversation' con el nuevo número de conversaciones
      redirect_to @lead, notice: 'La conversación fue agregada exitosamente.'
    else
      @conversations = @lead.conversations
      render "leads/show", status: :unprocessable_entity
    end
end

  private

def conversation_params
  params.require(:conversation).permit(:detail)
end

end
